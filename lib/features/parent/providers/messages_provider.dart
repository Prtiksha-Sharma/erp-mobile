import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/result.dart';
import '../../../core/models/message.dart';
import '../services/messages_service.dart';

/// Institution-scoped, not child-scoped (a parent can message any teacher at
/// the school regardless of which child is active) — plain provider, same
/// convention as Events/Grievances.
final teachersProvider = FutureProvider<List<TeacherContact>>((ref) async {
  final result = await MessagesService().listTeachers();
  return switch (result) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
});

/// Also not child-scoped — threads span every linked child at once
/// (parent_account_id, not student_id, is the ownership boundary).
final threadsProvider = FutureProvider<List<MessageThread>>((ref) async {
  final result = await MessagesService().listThreads();
  return switch (result) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
});

/// Keyed by threadId — re-invalidated on a poll timer while a chat screen
/// is open (see ChatScreen), since this deployment can't push live updates.
final threadDetailProvider = FutureProvider.family<MessageThread, String>((ref, threadId) async {
  final result = await MessagesService().getThread(threadId);
  return switch (result) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
});
