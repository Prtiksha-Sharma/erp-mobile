import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/message.dart';
import '../../../ui/widgets/error_view.dart';
import '../providers/messages_provider.dart';

/// One row per teacher, contact-list style (matches the web app's
/// MessagesInboxPage exactly — see its own row-merge comment) — a teacher
/// with an existing conversation carries its thread + last-message preview;
/// one with no conversation yet is still listed so a chat opens directly,
/// no separate "New Message" form.
class ParentMessagesScreen extends ConsumerStatefulWidget {
  const ParentMessagesScreen({super.key});

  @override
  ConsumerState<ParentMessagesScreen> createState() => _ParentMessagesScreenState();
}

class _ParentMessagesScreenState extends ConsumerState<ParentMessagesScreen> {
  String _search = '';

  @override
  Widget build(BuildContext context) {
    final teachersAsync = ref.watch(teachersProvider);
    final threadsAsync = ref.watch(threadsProvider);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
      appBar: AppBar(title: const Text('Messages')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Search teachers…',
                prefixIcon: Icon(Icons.search),
                isDense: true,
              ),
              onChanged: (v) => setState(() => _search = v),
            ),
          ),
          Expanded(
            child: teachersAsync.when(
              data: (teachers) => threadsAsync.when(
                data: (threads) => _ContactList(teachers: teachers, threads: threads, search: _search),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (err, _) => ErrorView(
                  message: describeError(err),
                  onRetry: () => ref.invalidate(threadsProvider),
                ),
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, _) => ErrorView(
                message: describeError(err),
                onRetry: () => ref.invalidate(teachersProvider),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Row {
  const _Row(this.teacher, this.thread);
  final TeacherContact teacher;
  final MessageThread? thread;
}

class _ContactList extends StatelessWidget {
  const _ContactList({required this.teachers, required this.threads, required this.search});

  final List<TeacherContact> teachers;
  final List<MessageThread> threads;
  final String search;

  @override
  Widget build(BuildContext context) {
    final threadByStaffId = <String, MessageThread>{};
    for (final t in threads) {
      final current = threadByStaffId[t.staffId];
      if (current == null ||
          (t.lastMessageAt != null &&
              (current.lastMessageAt == null || t.lastMessageAt!.isAfter(current.lastMessageAt!)))) {
        threadByStaffId[t.staffId] = t;
      }
    }

    var rows = teachers.map((teacher) => _Row(teacher, threadByStaffId[teacher.staffId])).toList();

    if (search.trim().isNotEmpty) {
      final q = search.trim().toLowerCase();
      rows = rows.where((r) => r.teacher.fullName.toLowerCase().contains(q)).toList();
    }

    rows.sort((a, b) {
      if (a.thread != null && b.thread == null) return -1;
      if (a.thread == null && b.thread != null) return 1;
      if (a.thread != null && b.thread != null) {
        final aTime = a.thread!.lastMessageAt;
        final bTime = b.thread!.lastMessageAt;
        if (aTime == null || bTime == null) return 0;
        return bTime.compareTo(aTime);
      }
      return a.teacher.fullName.compareTo(b.teacher.fullName);
    });

    if (rows.isEmpty) {
      return const Center(child: Text('No teachers found.'));
    }

    return ListView.separated(
      itemCount: rows.length,
      separatorBuilder: (_, _) => const Divider(height: 1),
      itemBuilder: (context, i) => _ContactTile(row: rows[i]),
    );
  }
}

class _ContactTile extends StatelessWidget {
  const _ContactTile({required this.row});

  final _Row row;

  static String _initials(String name) {
    final parts = name.trim().split(RegExp(r'\s+')).where((p) => p.isNotEmpty).toList();
    if (parts.isEmpty) return '?';
    return parts.take(2).map((p) => p[0]).join().toUpperCase();
  }

  String? _preview(MessageThread? thread) {
    if (thread == null || thread.messages.isEmpty) return null;
    final last = thread.messages.first;
    if (last.body.isNotEmpty) return last.body;
    if (last.attachmentUrl != null) return '📎 Attachment';
    return '';
  }

  @override
  Widget build(BuildContext context) {
    final thread = row.thread;
    final lastMessage = thread != null && thread.messages.isNotEmpty ? thread.messages.first : null;
    final unread = lastMessage?.senderRole == SenderRole.teacher && lastMessage?.readAt == null;
    final preview = _preview(thread);

    return ListTile(
      leading: CircleAvatar(child: Text(_initials(row.teacher.fullName))),
      title: Text(row.teacher.fullName),
      subtitle: Text(
        preview ?? row.teacher.designation ?? 'Tap to start a conversation',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: unread ? const TextStyle(fontWeight: FontWeight.bold) : null,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (thread?.lastMessageAt != null)
            // toLocal() first — see chat_screen.dart's ChatMessage timestamp
            // comment, same UTC-vs-local bug applies to any raw DateTime here.
            Text(
              DateFormat('d MMM').format(thread!.lastMessageAt!.toLocal()),
              style: Theme.of(context).textTheme.bodySmall,
            ),
          if (unread) ...[
            const SizedBox(height: 4),
            Container(width: 8, height: 8, decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle)),
          ],
        ],
      ),
      onTap: () => context.push(
        '/parent/more/messages/chat',
        extra: (threadId: thread?.threadId, staffId: row.teacher.staffId, teacherName: row.teacher.fullName),
      ),
    );
  }
}
