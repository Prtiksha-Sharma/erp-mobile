import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/message.dart';
import '../../../ui/widgets/error_view.dart';
import '../providers/children_provider.dart' show activeChildProvider;
import '../providers/messages_provider.dart';
import '../services/messages_service.dart';

/// Either an existing [threadId] (open it, poll it) or a brand-new
/// conversation identified only by [staffId] + [teacherName] — the first
/// message sent there calls startThread() instead of sendMessage(), and the
/// screen switches over to the newly created threadId for everything after.
/// No Socket.IO here (see messages_service.dart's own comment) — a
/// Timer.periodic re-fetch is this deployment's stand-in for live push.
class ChatScreen extends ConsumerStatefulWidget {
  const ChatScreen({super.key, this.threadId, this.staffId, this.teacherName});

  final String? threadId;
  final String? staffId;
  final String? teacherName;

  @override
  ConsumerState<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
  static const _pollInterval = Duration(seconds: 4);

  final _textController = TextEditingController();
  final _scrollController = ScrollController();
  String? _threadId;
  bool _isSending = false;
  Failure? _sendError;
  Timer? _pollTimer;

  @override
  void initState() {
    super.initState();
    _threadId = widget.threadId;
    if (_threadId != null) _startPolling();
  }

  @override
  void dispose() {
    _pollTimer?.cancel();
    _textController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _startPolling() {
    _pollTimer?.cancel();
    _pollTimer = Timer.periodic(_pollInterval, (_) {
      final id = _threadId;
      if (id != null) ref.invalidate(threadDetailProvider(id));
    });
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_scrollController.hasClients) return;
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    });
  }

  Future<void> _send() async {
    final text = _textController.text.trim();
    if (text.isEmpty || _isSending) return;

    setState(() {
      _isSending = true;
      _sendError = null;
    });

    final existingThreadId = _threadId;
    final result = existingThreadId == null ? await _startNewThread(text) : await MessagesService().sendMessage(existingThreadId, text);

    if (!mounted) return;

    switch (result) {
      case Ok():
        _textController.clear();
        if (existingThreadId == null) {
          // _threadId was just set inside _startNewThread on success.
          _startPolling();
        } else {
          ref.invalidate(threadDetailProvider(existingThreadId));
        }
        ref.invalidate(threadsProvider);
        setState(() => _isSending = false);
        _scrollToBottom();
      case Err(:final failure):
        setState(() {
          _isSending = false;
          _sendError = failure;
        });
    }
  }

  Future<Result<Object>> _startNewThread(String text) async {
    final activeChild = ref.read(activeChildProvider);
    if (activeChild == null) {
      return const Err(Failure.validation('Select a child from Home first.'));
    }
    final result = await MessagesService().startThread(
      studentId: activeChild.studentId,
      staffId: widget.staffId!,
      body: text,
    );
    if (result case Ok(:final value)) {
      _threadId = value.threadId;
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final title = widget.teacherName ?? 'Chat';
    final threadId = _threadId;

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        children: [
          Expanded(
            child: threadId == null
                ? const Center(child: Text('Send a message to start the conversation.'))
                : ref.watch(threadDetailProvider(threadId)).when(
                      data: (thread) {
                        _scrollToBottom();
                        return _MessageList(thread: thread, scrollController: _scrollController);
                      },
                      loading: () => const Center(child: CircularProgressIndicator()),
                      error: (err, _) => ErrorView(
                        message: describeError(err),
                        onRetry: () => ref.invalidate(threadDetailProvider(threadId)),
                      ),
                    ),
          ),
          if (_sendError != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(_sendError!.userMessage, style: TextStyle(color: Theme.of(context).colorScheme.error)),
            ),
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textController,
                      decoration: const InputDecoration(hintText: 'Type a message…'),
                      minLines: 1,
                      maxLines: 4,
                      textInputAction: TextInputAction.send,
                      onSubmitted: (_) => _send(),
                    ),
                  ),
                  IconButton(
                    icon: _isSending
                        ? const SizedBox(height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2))
                        : const Icon(Icons.send),
                    onPressed: _isSending ? null : _send,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MessageList extends StatelessWidget {
  const _MessageList({required this.thread, required this.scrollController});

  final MessageThread thread;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    if (thread.messages.isEmpty) {
      return const Center(child: Text('No messages yet.'));
    }
    final timeFormat = DateFormat('h:mm a');
    return ListView.builder(
      controller: scrollController,
      padding: const EdgeInsets.all(12),
      itemCount: thread.messages.length,
      itemBuilder: (context, i) {
        final message = thread.messages[i];
        final isMine = message.senderRole == SenderRole.parent;
        return Align(
          alignment: isMine ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
            decoration: BoxDecoration(
              color: isMine ? Theme.of(context).colorScheme.primaryContainer : Theme.of(context).colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(message.body),
                if (message.createdAt != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    // createdAt comes back as UTC (trailing 'Z') — DateFormat
                    // prints whatever wall-clock time is stored, it does NOT
                    // convert timezones on its own, so toLocal() first is
                    // required or this shows the UTC hour instead of the
                    // device's actual local time.
                    child: Text(
                      timeFormat.format(message.createdAt!.toLocal()),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
