import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/message_thread.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/external_link_button.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/teacher_portal_providers.dart';
import '../services/teacher_messages_service.dart';
import '../services/teacher_portal_service.dart' show UploadFile;
import 'teacher_page_scaffold.dart';

/// The web gets live updates over Socket.IO and refetches every 60s as a
/// safety net. Mobile has no socket client, so the inbox keeps that 60s
/// refresh and an open thread polls faster instead.
const _inboxRefresh = Duration(seconds: 60);
const _threadRefresh = Duration(seconds: 15);

/// Port of TeacherMessagesInboxPage.jsx — one row per parent conversation,
/// newest first, with a "New" badge when the last message is an unread one
/// from the parent. (The web's live "typing…" preview needs sockets.)
class TeacherMessagesScreen extends ConsumerStatefulWidget {
  const TeacherMessagesScreen({super.key});

  @override
  ConsumerState<TeacherMessagesScreen> createState() => _TeacherMessagesScreenState();
}

class _TeacherMessagesScreenState extends ConsumerState<TeacherMessagesScreen> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(_inboxRefresh, (_) => ref.invalidate(teacherThreadsProvider));
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TeacherPageScaffold(
      title: 'Messages',
      body: AsyncValueView(
        value: ref.watch(teacherThreadsProvider),
        loadingLabel: 'Loading messages…',
        onRetry: () => ref.invalidate(teacherThreadsProvider),
        data: (threads) => ResponsiveListView(
          onRefresh: () => ref.refresh(teacherThreadsProvider.future),
          children: [
            if (threads.isEmpty)
              const EmptyCard(
                icon: Icons.forum_outlined,
                title: 'No messages yet',
                message: 'Messages from parents will appear here.',
              )
            else
              DividedCard(children: [for (final t in threads) _ThreadRow(thread: t)]),
          ],
        ),
      ),
    );
  }
}

String? _preview(ChatMessage? m) {
  if (m == null) return null;
  if (m.body.isNotEmpty) return m.body;
  if (m.attachmentUrl != null) return isImageAttachment(m.attachmentUrl) ? '📷 Photo' : '📎 Attachment';
  return '';
}

class _ThreadRow extends StatelessWidget {
  const _ThreadRow({required this.thread});

  final MessageThread thread;

  @override
  Widget build(BuildContext context) {
    final last = thread.messages.isEmpty ? null : thread.messages.first;
    final unread = last != null && last.senderRole == 'PARENT' && last.readAt == null;
    return InkWell(
      onTap: () => context.go('/teacher/messages/${thread.threadId}'),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            _Initials(name: thread.parentName, size: 40),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          thread.parentName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: unread ? FontWeight.w700 : FontWeight.w600),
                        ),
                      ),
                      if (unread) ...[
                        const SizedBox(width: 6),
                        const StatusBadge(label: 'New', variant: BadgeVariant.primary),
                      ],
                    ],
                  ),
                  Text(
                    'Re: ${thread.studentLabel}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                  ),
                  if (last != null) ...[
                    const SizedBox(height: 2),
                    Text(
                      '${last.senderRole == 'TEACHER' ? 'You: ' : ''}${_preview(last)}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 13, color: AppColors.textSecondary),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(width: 8),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 96),
              child: Text(
                thread.lastMessageAt == null ? '—' : formatDateTime(thread.lastMessageAt),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.end,
                style: const TextStyle(fontSize: 11, color: AppColors.textMuted),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Initials extends StatelessWidget {
  const _Initials({required this.name, required this.size});

  final String name;
  final double size;

  @override
  Widget build(BuildContext context) => CircleAvatar(
        radius: size / 2,
        backgroundColor: AppColors.primaryLight,
        child: Text(
          initialsOf(name),
          style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.w700, fontSize: size / 3),
        ),
      );
}

// ── Thread detail ──────────────────────────────────────────────────────────

/// web chatGrouping.js: consecutive same-sender messages within 3 minutes
/// form one cluster; clusters are grouped by day (Today / Yesterday / date).
const _clusterGap = Duration(minutes: 3);

class _Cluster {
  _Cluster(this.senderRole);

  final String senderRole;
  final List<ChatMessage> messages = [];
}

class _DayGroup {
  _DayGroup(this.label);

  final String label;
  final List<_Cluster> clusters = [];
}

String _dayLabel(DateTime local) {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final day = DateTime(local.year, local.month, local.day);
  final diff = today.difference(day).inDays;
  if (diff == 0) return 'Today';
  if (diff == 1) return 'Yesterday';
  return DateFormat('dd MMM yyyy').format(local);
}

List<_DayGroup> _group(List<ChatMessage> messages) {
  final days = <_DayGroup>[];
  for (final m in messages) {
    final created = (m.createdAt ?? DateTime.now()).toLocal();
    final label = _dayLabel(created);
    if (days.isEmpty || days.last.label != label) days.add(_DayGroup(label));
    final day = days.last;
    final cluster = day.clusters.isEmpty ? null : day.clusters.last;
    final prev = cluster?.messages.last;
    final sameSender = prev?.senderRole == m.senderRole;
    final withinGap = prev?.createdAt != null &&
        m.createdAt != null &&
        m.createdAt!.difference(prev!.createdAt!).abs() < _clusterGap;
    if (cluster != null && sameSender && withinGap) {
      cluster.messages.add(m);
    } else {
      day.clusters.add(_Cluster(m.senderRole)..messages.add(m));
    }
  }
  return days;
}

/// web formatLastSeen().
String _lastSeen(DateTime at) {
  final mins = DateTime.now().difference(at.toLocal()).inMinutes;
  if (mins < 1) return 'just now';
  if (mins < 60) return '$mins min ago';
  final hrs = (mins / 60).round();
  if (hrs < 24) return '$hrs hr ago';
  final days = (hrs / 24).round();
  if (days == 1) return 'yesterday';
  if (days < 7) return '$days days ago';
  return DateFormat('dd MMM yyyy').format(at.toLocal());
}

/// Chat attachments: lib/messageUpload.js allows JPG / PNG / PDF, 10 MB.
const _attachmentMime = {'jpg': 'image/jpeg', 'jpeg': 'image/jpeg', 'png': 'image/png', 'pdf': 'application/pdf'};
const _attachmentMaxBytes = 10 * 1024 * 1024;

/// Port of TeacherThreadDetailPage.jsx — grouped chat bubbles with day
/// separators, read ticks on own messages, image/PDF attachments and a
/// composer. Opening the thread marks the parent's messages as read.
class TeacherThreadScreen extends ConsumerStatefulWidget {
  const TeacherThreadScreen({super.key, required this.threadId});

  final String threadId;

  @override
  ConsumerState<TeacherThreadScreen> createState() => _TeacherThreadScreenState();
}

class _TeacherThreadScreenState extends ConsumerState<TeacherThreadScreen> {
  final _body = TextEditingController();
  final _scroll = ScrollController();
  UploadFile? _file;
  bool _sending = false;
  String? _error;
  Timer? _timer;
  int _lastCount = -1;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(_threadRefresh, (_) => ref.invalidate(teacherThreadProvider(widget.threadId)));
  }

  @override
  void dispose() {
    _timer?.cancel();
    _body.dispose();
    _scroll.dispose();
    super.dispose();
  }

  void _scrollToBottomIfNew(int count) {
    if (count == _lastCount) return;
    _lastCount = count;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scroll.hasClients) _scroll.jumpTo(_scroll.position.maxScrollExtent);
    });
  }

  Future<void> _attach() async {
    final (file, error) = await pickUploadFile(
      mimeByExtension: _attachmentMime,
      maxBytes: _attachmentMaxBytes,
      typeError: 'Only JPG, PNG and PDF files are allowed',
      sizeError: 'File too large. Maximum allowed size is 10 MB',
    );
    if (!mounted) return;
    setState(() {
      if (file != null) _file = file;
      _error = error;
    });
  }

  Future<void> _send() async {
    final text = _body.text.trim();
    if (text.isEmpty && _file == null) return;
    setState(() {
      _sending = true;
      _error = null;
    });
    final result = await TeacherMessagesService().postReply(widget.threadId, body: text, attachment: _file);
    if (!mounted) return;
    switch (result) {
      case Ok():
        _body.clear();
        setState(() {
          _sending = false;
          _file = null;
        });
        ref
          ..invalidate(teacherThreadProvider(widget.threadId))
          ..invalidate(teacherThreadsProvider);
      case Err(:final failure):
        setState(() {
          _sending = false;
          _error = failure.userMessage;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = teacherThreadProvider(widget.threadId);
    // Opening the thread marks the parent's messages read server-side, so
    // the inbox's "New" badges are stale once the first load lands.
    ref.listen(provider, (prev, next) {
      if (next.hasValue && !(prev?.hasValue ?? false)) ref.invalidate(teacherThreadsProvider);
    });
    final value = ref.watch(provider);
    final thread = value.value;
    final parentUserId = thread?.parentAccount?.userId;
    final presence = parentUserId == null ? null : ref.watch(parentPresenceProvider(parentUserId)).value;

    final String subtitle;
    if (presence?.isOnline ?? false) {
      subtitle = 'Active now';
    } else if (presence?.lastActiveAt != null) {
      subtitle = 'Active ${_lastSeen(presence!.lastActiveAt!)}';
    } else {
      subtitle = thread == null ? '' : 'Re: ${thread.studentLabel}';
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
      appBar: AppBar(
        titleSpacing: 0,
        title: thread == null
            ? const Text('Messages')
            : Row(
                children: [
                  Stack(
                    children: [
                      _Initials(name: thread.parentName, size: 36),
                      if (presence?.isOnline ?? false)
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: AppColors.success,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(thread.parentName, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 16)),
                        Text(
                          subtitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                            color: (presence?.isOnline ?? false) ? AppColors.success : AppColors.textMuted,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
      body: AsyncValueView(
        value: value,
        loadingLabel: 'Loading conversation…',
        onRetry: () => ref.invalidate(provider),
        data: (t) {
          _scrollToBottomIfNew(t.messages.length);
          final groups = _group(t.messages);
          return Column(
            children: [
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () => ref.refresh(provider.future),
                  child: ListView(
                    controller: _scroll,
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.fromLTRB(12, 8, 12, 12),
                    children: [
                      for (final day in groups) ...[
                        Center(
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 12),
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                            decoration: BoxDecoration(color: AppColors.pageBg, borderRadius: BorderRadius.circular(999)),
                            child: Text(day.label, style: const TextStyle(fontSize: 11, color: AppColors.textMuted)),
                          ),
                        ),
                        for (final c in day.clusters) ResponsiveCenter(child: _ClusterView(cluster: c, parentName: t.parentName)),
                      ],
                    ],
                  ),
                ),
              ),
              _Composer(
                controller: _body,
                file: _file,
                sending: _sending,
                error: _error,
                onAttach: _attach,
                onClearFile: () => setState(() => _file = null),
                onSend: _send,
              ),
            ],
          );
        },
      ),
    );
  }
}

class _ClusterView extends StatelessWidget {
  const _ClusterView({required this.cluster, required this.parentName});

  final _Cluster cluster;
  final String parentName;

  @override
  Widget build(BuildContext context) {
    final mine = cluster.senderRole == 'TEACHER';
    final maxBubble = MediaQuery.sizeOf(context).width * (context.isTabletWidth ? 0.55 : 0.75);
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        mainAxisAlignment: mine ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!mine) ...[_Initials(name: parentName, size: 24), const SizedBox(width: 6)],
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: maxBubble),
            child: Column(
              crossAxisAlignment: mine ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                for (final (i, m) in cluster.messages.indexed)
                  _Bubble(
                    message: m,
                    mine: mine,
                    first: i == 0,
                    last: i == cluster.messages.length - 1,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Bubble extends StatelessWidget {
  const _Bubble({required this.message, required this.mine, required this.first, required this.last});

  final ChatMessage message;
  final bool mine;
  final bool first;
  final bool last;

  @override
  Widget build(BuildContext context) {
    // Tighter corner on the side that touches a same-sender neighbour
    // (web bubbleRadiusClass).
    const big = Radius.circular(20);
    const small = Radius.circular(6);
    final radius = BorderRadius.only(
      topLeft: !mine && !first ? small : big,
      topRight: mine && !first ? small : big,
      bottomLeft: !mine && !last ? small : big,
      bottomRight: mine && !last ? small : big,
    );
    final fg = mine ? Colors.white : AppColors.textPrimary;
    final url = message.attachmentUrl;

    return Padding(
      padding: EdgeInsets.only(top: first ? 0 : 3),
      child: Column(
        crossAxisAlignment: mine ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            decoration: BoxDecoration(color: mine ? AppColors.primary : AppColors.pageBg, borderRadius: radius),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (url != null)
                  Padding(
                    padding: EdgeInsets.only(bottom: message.body.isNotEmpty ? 6 : 0),
                    child: isImageAttachment(url)
                        ? GestureDetector(
                            onTap: () => openExternalUrl(context, url),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: CachedNetworkImage(
                                imageUrl: url,
                                height: 200,
                                fit: BoxFit.cover,
                                placeholder: (_, _) => const SizedBox(
                                  height: 120,
                                  width: 160,
                                  child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
                                ),
                                errorWidget: (_, _, _) => const Icon(Icons.broken_image_outlined),
                              ),
                            ),
                          )
                        : InkWell(
                            onTap: () => openExternalUrl(context, url),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                              decoration: BoxDecoration(
                                color: mine ? Colors.white.withValues(alpha: 0.12) : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.description_outlined, size: 16, color: fg),
                                  const SizedBox(width: 6),
                                  Flexible(
                                    child: Text(
                                      attachmentFileName(url),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: fg, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                  ),
                if (message.body.isNotEmpty) Text(message.body, style: TextStyle(color: fg)),
              ],
            ),
          ),
          if (last)
            Padding(
              padding: const EdgeInsets.only(top: 3, bottom: 2),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    message.createdAt == null ? '' : DateFormat('hh:mm a').format(message.createdAt!.toLocal()),
                    style: const TextStyle(fontSize: 11, color: AppColors.textMuted),
                  ),
                  if (mine) ...[
                    const SizedBox(width: 4),
                    Icon(
                      message.readAt != null ? Icons.done_all : Icons.done,
                      size: 14,
                      color: message.readAt != null ? AppColors.primary : AppColors.textMuted,
                    ),
                  ],
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _Composer extends StatelessWidget {
  const _Composer({
    required this.controller,
    required this.file,
    required this.sending,
    required this.error,
    required this.onAttach,
    required this.onClearFile,
    required this.onSend,
  });

  final TextEditingController controller;
  final UploadFile? file;
  final bool sending;
  final String? error;
  final VoidCallback onAttach;
  final VoidCallback onClearFile;
  final VoidCallback onSend;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: const Border(top: BorderSide(color: AppColors.border)),
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
          child: ResponsiveCenter(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (error != null)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 6),
                    child: Text(error!, style: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 12)),
                  ),
                if (file != null)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 6),
                    child: InputChip(
                      avatar: const Icon(Icons.description_outlined, size: 16),
                      label: Text(file!.name, overflow: TextOverflow.ellipsis),
                      onDeleted: onClearFile,
                    ),
                  ),
                ValueListenableBuilder<TextEditingValue>(
                  valueListenable: controller,
                  builder: (context, text, _) {
                    final canSend = !sending && (text.text.trim().isNotEmpty || file != null);
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(
                          tooltip: 'Attach a file',
                          onPressed: sending ? null : onAttach,
                          icon: const Icon(Icons.attach_file),
                        ),
                        Expanded(
                          child: TextField(
                            controller: controller,
                            minLines: 1,
                            maxLines: 4,
                            textCapitalization: TextCapitalization.sentences,
                            decoration: InputDecoration(
                              hintText: 'Message…',
                              filled: true,
                              fillColor: AppColors.pageBg,
                              isDense: true,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                        const SizedBox(width: 6),
                        IconButton.filled(
                          tooltip: 'Send',
                          onPressed: canSend ? onSend : null,
                          icon: sending
                              ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                              : const Icon(Icons.send),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
