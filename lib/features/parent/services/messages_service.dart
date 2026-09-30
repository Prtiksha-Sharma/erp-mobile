import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/message.dart';

/// The 6 parent messaging endpoints — verified by direct read of
/// parent/messages.controller.js + parent/messages.service.js +
/// parent/teachers.service.js#listAllTeachers (no messages exist yet on
/// this test account to live-capture). Presence
/// (GET /messages/presence/:userId) is deliberately not wired here — it
/// only reflects real data when Socket.IO is running (src/realtime/
/// presence.js), which this deployment doesn't support; showing it would
/// mean showing wrong data, so it's left for whenever that's fixed.
class MessagesService {
  Future<Result<List<TeacherContact>>> listTeachers() => guard(() async {
        final res = await DioClient.instance.dio.get('/parent/messages/teachers');
        return (res.data['data'] as List).cast<Map<String, dynamic>>().map(TeacherContact.fromJson).toList();
      });

  Future<Result<List<MessageThread>>> listThreads() => guard(() async {
        final res = await DioClient.instance.dio.get('/parent/messages/threads');
        return (res.data['data'] as List).cast<Map<String, dynamic>>().map(MessageThread.fromJson).toList();
      });

  Future<Result<MessageThread>> getThread(String threadId) => guard(() async {
        final res = await DioClient.instance.dio.get('/parent/messages/threads/$threadId');
        return MessageThread.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  /// createThreadHandler is behind messageUpload.single('attachment') multer
  /// middleware — multipart/form-data even with no file attached (attachments
  /// aren't wired up on the mobile side yet, only the text body).
  Future<Result<MessageThread>> startThread({
    required String studentId,
    required String staffId,
    required String body,
  }) =>
      guard(() async {
        final form = FormData.fromMap({'studentId': studentId, 'staffId': staffId, 'body': body});
        final res = await DioClient.instance.dio.post('/parent/messages/threads', data: form);
        return MessageThread.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  Future<Result<ChatMessage>> sendMessage(String threadId, String body) => guard(() async {
        final form = FormData.fromMap({'body': body});
        final res = await DioClient.instance.dio.post('/parent/messages/threads/$threadId/messages', data: form);
        return ChatMessage.fromJson(res.data['data'] as Map<String, dynamic>);
      });
}
