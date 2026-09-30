import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/message_thread.dart';
import 'teacher_portal_service.dart' show UploadFile;

/// Parent ↔ teacher messaging — mirrors the web's teacherMessagesService.js
/// (teacher/messages.service.js on the backend). The web also listens on
/// Socket.IO for live messages/typing/presence; mobile has no socket client,
/// so the thread screen polls instead (see TeacherThreadScreen).
class TeacherMessagesService {
  Dio get _dio => DioClient.instance.dio;

  Future<Result<List<MessageThread>>> getMyThreads() => guard(() async {
        final res = await _dio.get('/teacher/messages/threads');
        final data = res.data['data'] as List? ?? const [];
        return data.map((e) => MessageThread.fromJson(e as Map<String, dynamic>)).toList();
      });

  /// Opening a thread marks the parent's unread messages as read server-side.
  Future<Result<MessageThread>> getThread(String threadId) => guard(() async {
        final res = await _dio.get('/teacher/messages/threads/$threadId');
        return MessageThread.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  /// JSON `{ body }` without a file; multipart `body` + `attachment` with one
  /// (lib/messageUpload.js: JPG/PNG/PDF, 10 MB) — same split as the web.
  Future<Result<ChatMessage>> postReply(String threadId, {required String body, UploadFile? attachment}) =>
      guard(() async {
        final Object data = attachment == null
            ? {'body': body}
            : FormData.fromMap({'body': body, 'attachment': attachment.toMultipart()});
        final res = await _dio.post('/teacher/messages/threads/$threadId/messages', data: data);
        return ChatMessage.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  Future<Result<ParentPresence>> getParentPresence(String userId) => guard(() async {
        final res = await _dio.get('/teacher/messages/presence/$userId');
        return ParentPresence.fromJson(res.data['data'] as Map<String, dynamic>);
      });
}
