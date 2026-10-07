import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/library.dart';
import '../../../core/models/staff_profile.dart';

/// Every `/librarian/*` endpoint the mobile app uses — mirrors the web's
/// librarianPortalService.js. The backend resolves the librarian from the JWT
/// (authorize("Librarian") + staff_accounts lookup), so no staffId or
/// institutionId is ever sent. All query params / body fields are snake_case.
class LibrarianService {
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

  // ── Dashboard ──────────────────────────────────────────────────────────
  Future<Result<LibrarianDashboard>> getDashboard() => guard(() => _one('/librarian/dashboard', LibrarianDashboard.fromJson));

  // ── Profile (same select as the teacher/principal profile) ─────────────
  Future<Result<StaffProfile>> getMyProfile() => guard(() => _one('/librarian/profile', StaffProfile.fromJson));

  /// Only contact_number / address / profile_photo_url are accepted by the
  /// backend (profile.service.js SELF_EDITABLE_FIELDS). A blank field is sent
  /// as null, same as the other staff portals.
  Future<Result<StaffProfile>> updateMyProfile({String? contactNumber, String? address}) => guard(() async {
        final res = await _dio.patch('/librarian/profile', data: {
          'contact_number': _blankToNull(contactNumber),
          'address': _blankToNull(address),
        });
        return StaffProfile.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  Future<Result<StaffProfile>> removeMyProfilePhoto() => guard(() async {
        final res = await _dio.patch('/librarian/profile', data: {'profile_photo_url': null});
        return StaffProfile.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  /// Multipart field `photo` (JPG/PNG/WebP, 2 MB). The MIME type must be
  /// explicit — multer rejects octet-stream.
  Future<Result<StaffProfile>> uploadMyProfilePhoto(LibraryUploadFile photo) => guard(() async {
        final res = await _dio.post('/librarian/profile/photo', data: FormData.fromMap({'photo': photo.toMultipart()}));
        return StaffProfile.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  // ── Books ──────────────────────────────────────────────────────────────
  /// The backend returns the whole catalog (no pagination), so searching and
  /// filtering is done on the device by the screen.
  Future<Result<List<LibraryBook>>> listBooks() => guard(() => _list('/librarian/books', LibraryBook.fromJson));

  Future<Result<LibraryBook>> createBook(LibraryBookInput input) => guard(() async {
        final res = await _dio.post('/librarian/books', data: input.toJson());
        return LibraryBook.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  Future<Result<LibraryBook>> updateBook(String bookId, LibraryBookInput input, {bool? isActive}) => guard(() async {
        final res = await _dio.patch('/librarian/books/$bookId', data: {
          ...input.toJson(),
          'is_active': ?isActive,
        });
        return LibraryBook.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  /// DELETE only deactivates (books.service.js#deactivateBook).
  Future<Result<void>> deactivateBook(String bookId) => guard(() async {
        await _dio.delete('/librarian/books/$bookId');
      });

  /// Re-activation goes through PATCH is_active (there is no restore route).
  Future<Result<LibraryBook>> setBookActive(String bookId, bool isActive) => guard(() async {
        final res = await _dio.patch('/librarian/books/$bookId', data: {'is_active': isActive});
        return LibraryBook.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  // ── Students (issue flow lookup, capped at 50 rows server-side) ────────
  Future<Result<List<LibraryStudentHit>>> searchStudents(String search) => guard(
        () => _list('/librarian/students/search', LibraryStudentHit.fromJson, query: {'search': search}),
      );

  // ── Issue / return ─────────────────────────────────────────────────────
  Future<Result<List<BookIssue>>> listIssues({String? status, bool overdueOnly = false}) => guard(
        () => _list('/librarian/issues', BookIssue.fromJson, query: {
          'status': ?status,
          if (overdueOnly) 'overdue_only': 'true',
        }),
      );

  /// POST /issues — the default loan period (14 days) applies when [dueDate]
  /// is omitted. 409 when no copy is left, 400 for an inactive book.
  Future<Result<void>> issueBook({required String bookId, required String studentId, DateTime? dueDate}) =>
      guard(() async {
        await _dio.post('/librarian/issues', data: {
          'book_id': bookId,
          'student_id': studentId,
          if (dueDate != null) 'due_date': dueDate.toUtc().toIso8601String(),
        });
      });

  Future<Result<void>> returnBook(String issueId) => guard(() async {
        await _dio.patch('/librarian/issues/$issueId/return');
      });

  // ── Fines ──────────────────────────────────────────────────────────────
  Future<Result<PendingFines>> getPendingFines() => guard(() => _one('/librarian/fines/pending', PendingFines.fromJson));

  Future<Result<List<FineRecord>>> getFineHistory() => guard(() => _list('/librarian/fines/history', FineRecord.fromJson));

  Future<Result<void>> markFinePaid(String fineId) => guard(() async {
        await _dio.patch('/librarian/fines/$fineId/pay');
      });

  Future<Result<LibraryFineSettings>> getFineSettings() =>
      guard(() => _one('/librarian/fine-settings', LibraryFineSettings.fromJson));

  // ── Reports ────────────────────────────────────────────────────────────
  Future<Result<InventoryReport>> getInventoryReport() =>
      guard(() => _one('/librarian/reports/inventory', InventoryReport.fromJson));

  Future<Result<List<BookIssue>>> getIssuedReport() => guard(() => _list('/librarian/reports/issued', BookIssue.fromJson));

  Future<Result<List<BookIssue>>> getReturnedReport() =>
      guard(() => _list('/librarian/reports/returned', BookIssue.fromJson));

  Future<Result<OverdueReport>> getOverdueReport() => guard(() => _one('/librarian/reports/overdue', OverdueReport.fromJson));

  Future<Result<FineCollectionReport>> getFineCollectionReport() =>
      guard(() => _one('/librarian/reports/fine-collection', FineCollectionReport.fromJson));

  Future<Result<List<BookIssue>>> getStudentBorrowingHistory(String studentId) => guard(
        () => _list('/librarian/reports/student/$studentId/borrowing-history', BookIssue.fromJson),
      );
}

String? _blankToNull(String? v) => (v == null || v.trim().isEmpty) ? null : v.trim();

/// Catalog form fields. Optional text fields are sent as null when blank so a
/// cleared field really clears (books.service.js uses `!== undefined`).
class LibraryBookInput {
  const LibraryBookInput({
    required this.title,
    this.author,
    this.accessionNo,
    this.category,
    this.publisher,
    this.edition,
    this.publicationYear,
    this.language,
    this.shelfRack,
    this.instituteClass,
    required this.totalCopies,
  });

  final String title;
  final String? author;
  final String? accessionNo;
  final String? category;
  final String? publisher;
  final String? edition;
  final int? publicationYear;
  final String? language;
  final String? shelfRack;
  final String? instituteClass;
  final int totalCopies;

  Map<String, dynamic> toJson() => {
        'title': title.trim(),
        'author': _blankToNull(author),
        'accession_no': _blankToNull(accessionNo),
        'category': _blankToNull(category),
        'publisher': _blankToNull(publisher),
        'edition': _blankToNull(edition),
        'publication_year': publicationYear,
        'language': _blankToNull(language),
        'shelf_rack': _blankToNull(shelfRack),
        'institute_class': _blankToNull(instituteClass),
        'total_copies': totalCopies,
      };
}

/// A picked file ready for a multipart upload.
class LibraryUploadFile {
  const LibraryUploadFile({required this.name, required this.bytes, required this.mimeType});

  final String name;
  final List<int> bytes;
  final String mimeType;

  MultipartFile toMultipart() =>
      MultipartFile.fromBytes(bytes, filename: name, contentType: DioMediaType.parse(mimeType));
}
