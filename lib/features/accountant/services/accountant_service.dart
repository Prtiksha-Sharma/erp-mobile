import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/accountant.dart';
import '../../../core/models/library.dart';
import '../../../core/models/staff_profile.dart';

/// Every `/accountant/*` fee-side endpoint the mobile app uses (Phase 1 —
/// the `/accountant/accounting/*` books come later). The backend resolves
/// the institution from the JWT (authorize("Accountant")), so no ids are
/// sent besides the record being acted on. No list is paginated server-side,
/// so list screens always send a date range.
class AccountantService {
  Dio get _dio => DioClient.instance.dio;

  Future<List<T>> _list<T>(String path, T Function(Map<String, dynamic>) fromJson,
      {Map<String, dynamic>? query}) async {
    final res = await _dio.get(path, queryParameters: query);
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<T> _one<T>(String path, T Function(Map<String, dynamic>) fromJson, {Map<String, dynamic>? query}) async {
    final res = await _dio.get(path, queryParameters: query);
    return fromJson(res.data['data'] as Map<String, dynamic>);
  }

  // ── Dashboard / policy ─────────────────────────────────────────────────
  Future<Result<AccountantDashboard>> getDashboard() =>
      guard(() => _one('/accountant/dashboard', AccountantDashboard.fromJson));

  Future<Result<FeeLateFeeSettings>> getLateFeeSettings() =>
      guard(() => _one('/accountant/late-fee-settings', FeeLateFeeSettings.fromJson));

  // ── Profile (same select as the librarian/teacher profile) ─────────────
  Future<Result<StaffProfile>> getMyProfile() => guard(() => _one('/accountant/profile', StaffProfile.fromJson));

  /// Only contact_number / address / profile_photo_url are accepted.
  Future<Result<StaffProfile>> updateMyProfile({String? contactNumber, String? address}) => guard(() async {
        final res = await _dio.patch('/accountant/profile', data: {
          'contact_number': _blankToNull(contactNumber),
          'address': _blankToNull(address),
        });
        return StaffProfile.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  Future<Result<StaffProfile>> removeMyProfilePhoto() => guard(() async {
        final res = await _dio.patch('/accountant/profile', data: {'profile_photo_url': null});
        return StaffProfile.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  /// Multipart field `photo` (JPG/PNG/WebP, 2 MB) — explicit MIME type.
  Future<Result<StaffProfile>> uploadMyProfilePhoto(AccountantUploadFile photo) => guard(() async {
        final res = await _dio.post('/accountant/profile/photo', data: FormData.fromMap({'photo': photo.toMultipart()}));
        return StaffProfile.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  // ── Fee collection ─────────────────────────────────────────────────────
  /// Matches admission no. / first / last name; capped at 50 rows server-side.
  Future<Result<List<AcctStudent>>> searchStudents(String search) =>
      guard(() => _list('/accountant/students', AcctStudent.fromJson, query: {'search': search}));

  Future<Result<FeeCollectionSummary>> getFeeSummary(String studentId) =>
      guard(() => _one('/accountant/students/$studentId/fee-summary', FeeCollectionSummary.fromJson));

  /// POST /accountant/receipts — totals and the receipt number are computed
  /// server-side; a line's late fee is auto-filled only when `fine_amount`
  /// is omitted, so the app always sends what the accountant confirmed.
  Future<Result<AcctReceipt>> collectFee({
    required String studentId,
    required String paymentMode,
    required List<CollectLine> lines,
    String? remarks,
  }) =>
      guard(() async {
        final res = await _dio.post('/accountant/receipts', data: {
          'student_id': studentId,
          'payment_mode': paymentMode,
          'remarks': _blankToNull(remarks),
          'items': [for (final l in lines) l.toJson()],
        });
        return AcctReceipt.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  // ── Receipts ───────────────────────────────────────────────────────────
  Future<Result<List<AcctReceipt>>> listReceipts({
    required DateTime from,
    required DateTime to,
    String? paymentMode,
    String? receiptNo,
    String? studentId,
  }) =>
      guard(
        () => _list('/accountant/receipts', AcctReceipt.fromJson, query: {
          'from_date': apiDay(from),
          'to_date': apiDay(to),
          'payment_mode': ?paymentMode,
          'receipt_no': ?receiptNo,
          'student_id': ?studentId,
        }),
      );

  Future<Result<AcctReceipt>> getReceipt(String receiptId) =>
      guard(() => _one('/accountant/receipts/$receiptId', AcctReceipt.fromJson));

  /// Irreversible. 409 if already cancelled.
  Future<Result<void>> cancelReceipt(String receiptId) => guard(() async {
        await _dio.patch('/accountant/receipts/$receiptId/cancel');
      });

  /// Irreversible; PAID receipts only; reason required.
  Future<Result<void>> refundReceipt(String receiptId, String reason) => guard(() async {
        await _dio.patch('/accountant/receipts/$receiptId/refund', data: {'reason': reason.trim()});
      });

  // ── Online payments ────────────────────────────────────────────────────
  Future<Result<List<AcctOnlinePayment>>> listOnlinePayments({
    required DateTime from,
    required DateTime to,
    String? status,
  }) =>
      guard(
        () => _list('/accountant/online-payments', AcctOnlinePayment.fromJson, query: {
          'from_date': apiDay(from),
          'to_date': apiDay(to),
          'payment_status': ?status,
        }),
      );

  Future<Result<AcctOnlinePayment>> getOnlinePayment(String paymentId) =>
      guard(() => _one('/accountant/online-payments/$paymentId', AcctOnlinePayment.fromJson));

  // ── Library fines (read-only — the Librarian collects them) ────────────
  Future<Result<PendingFines>> getPendingLibraryFines() =>
      guard(() => _one('/accountant/library-fines/pending', PendingFines.fromJson));

  Future<Result<List<FineRecord>>> getLibraryFineHistory() =>
      guard(() => _list('/accountant/library-fines/history', FineRecord.fromJson));
}

/// One line of a fee collection. `fine_amount` is always sent (even 0) so
/// the server never silently adds a late fee the accountant didn't confirm.
class CollectLine {
  const CollectLine({
    required this.feeHeadName,
    required this.amount,
    this.discount,
    this.fine,
    this.feeStructureId,
  });

  final String feeHeadName;
  final String amount;
  final String? discount;
  final String? fine;
  final String? feeStructureId;

  Map<String, dynamic> toJson() => {
        'fee_head_name': feeHeadName,
        'amount': num.parse(amount),
        'discount_amount': num.parse(discount ?? '0'),
        'fine_amount': num.parse(fine ?? '0'),
        'fee_structure_id': ?feeStructureId,
      };
}

/// A picked file ready for a multipart upload.
class AccountantUploadFile {
  const AccountantUploadFile({required this.name, required this.bytes, required this.mimeType});

  final String name;
  final List<int> bytes;
  final String mimeType;

  MultipartFile toMultipart() =>
      MultipartFile.fromBytes(bytes, filename: name, contentType: DioMediaType.parse(mimeType));
}

String? _blankToNull(String? v) => (v == null || v.trim().isEmpty) ? null : v.trim();

/// `YYYY-MM-DD` of a local calendar day (the backend's `new Date()` on it
/// is UTC midnight).
String apiDay(DateTime d) =>
    '${d.year.toString().padLeft(4, '0')}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';

/// receipt_date is a @db.Date, so `lte: new Date('YYYY-MM-DD')` (UTC
/// midnight) includes that whole day — but online payments filter on
/// created_at (a timestamp), where the same bound would cut off everything
/// after 00:00 UTC. Sending the next day for timestamps keeps "to" inclusive.
DateTime inclusiveTo(DateTime day) => DateTime(day.year, day.month, day.day + 1);
