import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/attendance_summary.dart';
import '../../../core/models/homework_submission.dart';
import '../../../core/models/student_certificates.dart';
import '../../../core/models/student_exams.dart';
import '../../../core/models/student_fees.dart';
import '../../../core/models/student_profile.dart';
import '../../../core/models/student_records.dart';
import '../../../core/models/timetable_entry.dart';

/// Every `/student/*` self-service endpoint — mirrors the web's
/// studentPortalService.js one method per call. All routes are scoped
/// server-side to the logged-in student (authorize('Student') +
/// resolveSelf() in student.router.js); no studentId is ever sent.
///
/// Heads-up (backend behavior, not a client bug): /profile, /documents and
/// /certificates/* are additionally gated by requirePermission('self.*')
/// and return 403 "Forbidden" if School Admin hasn't granted the Student
/// role those permissions — screens surface that message via ErrorView.
class StudentPortalService {
  Dio get _dio => DioClient.instance.dio;

  Future<List<T>> _list<T>(String path, T Function(Map<String, dynamic>) fromJson,
      {Map<String, dynamic>? query}) async {
    final res = await _dio.get(path, queryParameters: query);
    final data = res.data['data'] as List;
    return data.map((e) => fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<T> _one<T>(String path, T Function(Map<String, dynamic>) fromJson, {Map<String, dynamic>? query}) async {
    final res = await _dio.get(path, queryParameters: query);
    return fromJson(res.data['data'] as Map<String, dynamic>);
  }

  /// For endpoints whose `data` is legitimately `null` ("nothing recorded").
  Future<T?> _oneOrNull<T>(String path, T Function(Map<String, dynamic>) fromJson) async {
    final res = await _dio.get(path);
    final data = res.data['data'];
    return data == null ? null : fromJson(data as Map<String, dynamic>);
  }

  // ── Profile / documents / certificates ─────────────────────────────────
  Future<Result<StudentProfile>> getMyProfile() => guard(() => _one('/student/profile', StudentProfile.fromJson));

  Future<Result<List<StudentDocument>>> getMyDocuments() =>
      guard(() => _list('/student/documents', StudentDocument.fromJson));

  Future<Result<StudentIdCard>> getMyIdCard() =>
      guard(() => _one('/student/certificates/id-card', StudentIdCard.fromJson));

  Future<Result<StudentCertificate>> getMyCertificate(CertificateType type) =>
      guard(() => _one('/student/certificates/${type.path}', StudentCertificate.fromJson));

  // ── Attendance & leaves ────────────────────────────────────────────────
  Future<Result<AttendanceSummary>> getMyAttendance({String period = 'month'}) =>
      guard(() => _one('/student/attendance', AttendanceSummary.fromJson, query: {'period': period}));

  Future<Result<List<StudentLeave>>> getMyLeaves() => guard(() => _list('/student/leaves', StudentLeave.fromJson));

  /// Dates are sent as `YYYY-MM-DD` (what the web's `<input type="date">`
  /// sends). `reason` is omitted entirely when blank, same as the web.
  Future<Result<void>> applyLeave({
    required String leaveType,
    required DateTime fromDate,
    required DateTime toDate,
    String? reason,
  }) =>
      guard(() async {
        await _dio.post('/student/leaves', data: {
          'leave_type': leaveType,
          'from_date': _isoDate(fromDate),
          'to_date': _isoDate(toDate),
          if (reason != null && reason.trim().isNotEmpty) 'reason': reason.trim(),
        });
      });

  // ── Homework & assignments ─────────────────────────────────────────────
  /// [status] filters on the server-computed effective_status
  /// (PENDING | SUBMITTED | MISSING); null = all.
  Future<Result<List<HomeworkSubmission>>> getMyWork(WorkKind kind, {String? status}) => guard(
        () => _list('/student/${kind.path}', HomeworkSubmission.fromJson, query: {'status': ?status}),
      );

  /// Multipart POST, field name `file` (student/homework.controller.js).
  /// The attachment is optional — submitting with no file just marks the
  /// work as done, same as the web. With no file a plain JSON body is sent
  /// instead of an empty multipart one: multer skips non-multipart requests,
  /// while a zero-part multipart body can be rejected by its parser.
  Future<Result<void>> submitWork(WorkKind kind, String homeworkId, {WorkAttachment? attachment}) =>
      guard(() async {
        final Object body = attachment == null
            ? const <String, dynamic>{}
            : FormData.fromMap({
                'file': MultipartFile.fromBytes(
                  attachment.bytes,
                  filename: attachment.name,
                  contentType: DioMediaType.parse(attachment.mimeType),
                ),
              });
        await _dio.post('/student/${kind.path}/$homeworkId/submit', data: body);
      });

  // ── Exams ──────────────────────────────────────────────────────────────
  Future<Result<List<ExamSchedule>>> getMyExams() => guard(() => _list('/student/exams', ExamSchedule.fromJson));

  Future<Result<ReportCard>> getMyReportCard(String examId) =>
      guard(() => _one('/student/exams/$examId/report-card', ReportCard.fromJson));

  // ── Timetable / medical / discipline / promotion / transport ───────────
  Future<Result<List<TimetableEntry>>> getMyTimetable() =>
      guard(() => _list('/student/timetable', TimetableEntry.fromJson));

  Future<Result<MedicalInfo?>> getMyMedicalInfo() => guard(() => _oneOrNull('/student/medical', MedicalInfo.fromJson));

  Future<Result<List<DisciplineRecord>>> getMyDisciplineRecords() =>
      guard(() => _list('/student/discipline', DisciplineRecord.fromJson));

  Future<Result<List<PromotionRecord>>> getMyPromotionHistory() =>
      guard(() => _list('/student/promotion/history', PromotionRecord.fromJson));

  Future<Result<TransportAssignment?>> getMyTransport() =>
      guard(() => _oneOrNull('/student/transport', TransportAssignment.fromJson));

  // ── Fees ───────────────────────────────────────────────────────────────
  Future<Result<FeeSummary>> getMyFeeSummary() => guard(() => _one('/student/fees/summary', FeeSummary.fromJson));

  Future<Result<List<FeeReceipt>>> getMyReceipts() =>
      guard(() => _list('/student/fees/receipts', FeeReceipt.fromJson));

  Future<Result<FeeReceipt>> getMyReceiptById(String receiptId) =>
      guard(() => _one('/student/fees/receipts/$receiptId', FeeReceipt.fromJson));

  Future<Result<PendingDues>> getMyPendingDues() =>
      guard(() => _one('/student/fees/pending-dues', PendingDues.fromJson));

  Future<Result<List<FeePlanEntry>>> getMyFeePlans() => guard(() async {
        final res = await _dio.get('/student/fee-plan');
        final plans = (res.data['data'] as Map<String, dynamic>)['plans'] as List? ?? const [];
        return plans.map((e) => FeePlanEntry.fromJson(e as Map<String, dynamic>)).toList();
      });

  /// Body `{ fee_head_id, frequency }` (student/feePlan.controller.js) —
  /// one plan per fee head. The backend 409s once a payment has been made
  /// against an existing plan; that message is shown verbatim.
  Future<Result<void>> selectMyFeePlan({required String feeHeadId, required String frequency}) => guard(() async {
        await _dio.post('/student/fee-plan', data: {'fee_head_id': feeHeadId, 'frequency': frequency});
      });

  static String _isoDate(DateTime d) =>
      '${d.year.toString().padLeft(4, '0')}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';
}

/// Homework and Assignments are the same `academic_homework` shape on
/// separate routes (filtered by `type` server-side) — web's two tabs.
enum WorkKind {
  homework('homework', 'Homework'),
  assignment('assignments', 'Assignment');

  const WorkKind(this.path, this.label);

  final String path;
  final String label;
}

/// A file picked for a homework/assignment submission, already validated
/// against the backend's limits (lib/homeworkUpload.js).
class WorkAttachment {
  const WorkAttachment({required this.name, required this.bytes, required this.mimeType});

  final String name;
  final List<int> bytes;
  final String mimeType;

  static const maxBytes = 10 * 1024 * 1024;

  /// Extension -> MIME type the backend's multer fileFilter accepts. The
  /// MIME type must be set explicitly: Dio would otherwise send
  /// application/octet-stream, which the filter rejects.
  static const mimeByExtension = {
    'jpg': 'image/jpeg',
    'jpeg': 'image/jpeg',
    'png': 'image/png',
    'pdf': 'application/pdf',
    'doc': 'application/msword',
    'docx': 'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
    'ppt': 'application/vnd.ms-powerpoint',
    'pptx': 'application/vnd.openxmlformats-officedocument.presentationml.presentation',
  };
}
