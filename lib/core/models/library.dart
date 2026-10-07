import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/decimal_json.dart';

part 'library.freezed.dart';
part 'library.g.dart';

/// Librarian portal models — shapes verified against
/// edusoft_backend/src/features/librarian/*.service.js. Money fields go
/// through [decimalFromJson]: Prisma Decimal columns (book_fines.fine_amount)
/// arrive as JSON strings while computed fines (libraryFine.js#computeFine)
/// arrive as numbers.

/// One catalog entry (GET/POST/PATCH /librarian/books).
@freezed
abstract class LibraryBook with _$LibraryBook {
  const factory LibraryBook({
    @JsonKey(name: 'book_id') required String bookId,
    required String title,
    String? author,
    @JsonKey(name: 'accession_no') String? accessionNo,
    String? category,
    String? publisher,
    String? edition,
    @JsonKey(name: 'publication_year') int? publicationYear,
    String? language,
    @JsonKey(name: 'shelf_rack') String? shelfRack,
    @JsonKey(name: 'institute_class') String? instituteClass,
    @JsonKey(name: 'total_copies') @Default(0) int totalCopies,
    @JsonKey(name: 'available_copies') @Default(0) int availableCopies,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
  }) = _LibraryBook;

  factory LibraryBook.fromJson(Map<String, dynamic> json) => _$LibraryBookFromJson(json);
}

extension LibraryBookX on LibraryBook {
  int get issuedOut => totalCopies - availableCopies;
  bool get isAvailable => isActive && availableCopies > 0;
}

/// `books: { book_id, title, accession_no }` on every issue row.
@freezed
abstract class LibraryBookRef with _$LibraryBookRef {
  const factory LibraryBookRef({
    @JsonKey(name: 'book_id') required String bookId,
    required String title,
    @JsonKey(name: 'accession_no') String? accessionNo,
  }) = _LibraryBookRef;

  factory LibraryBookRef.fromJson(Map<String, dynamic> json) => _$LibraryBookRefFromJson(json);
}

@freezed
abstract class LibraryApplicantRef with _$LibraryApplicantRef {
  const factory LibraryApplicantRef({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
  }) = _LibraryApplicantRef;

  factory LibraryApplicantRef.fromJson(Map<String, dynamic> json) => _$LibraryApplicantRefFromJson(json);
}

String _fullName(LibraryApplicantRef? a) =>
    [a?.firstName, a?.lastName].where((p) => p != null && p.trim().isNotEmpty).join(' ');

/// `students: { student_id, admission_no, applicants }` on an issue row.
@freezed
abstract class LibraryStudentRef with _$LibraryStudentRef {
  const factory LibraryStudentRef({
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'admission_no') String? admissionNo,
    LibraryApplicantRef? applicants,
  }) = _LibraryStudentRef;

  factory LibraryStudentRef.fromJson(Map<String, dynamic> json) => _$LibraryStudentRefFromJson(json);
}

extension LibraryStudentRefX on LibraryStudentRef {
  String get fullName => _fullName(applicants);
}

/// A loan row. Covers /issues, the overdue part of /fines/pending, the
/// reports and borrowing history — the backend adds `overdue_days` and
/// `fine_amount` to all of them (computeFine), and fine_* flags where a fine
/// row exists.
@freezed
abstract class BookIssue with _$BookIssue {
  const factory BookIssue({
    @JsonKey(name: 'issue_id') required String issueId,
    @JsonKey(name: 'book_id') String? bookId,
    @JsonKey(name: 'student_id') String? studentId,
    @JsonKey(name: 'issue_date') DateTime? issueDate,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    @JsonKey(name: 'returned_at') DateTime? returnedAt,
    @Default('ISSUED') String status,
    LibraryBookRef? books,
    LibraryStudentRef? students,
    @JsonKey(name: 'overdue_days') @Default(0) int overdueDays,
    @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal fineAmount,
    @JsonKey(name: 'fine_id') String? fineId,
    @JsonKey(name: 'fine_paid') @Default(false) bool finePaid,
    @JsonKey(name: 'fine_paid_at') DateTime? finePaidAt,
  }) = _BookIssue;

  factory BookIssue.fromJson(Map<String, dynamic> json) => _$BookIssueFromJson(json);
}

extension BookIssueX on BookIssue {
  bool get isReturned => status == 'RETURNED';
  bool get isOverdue => !isReturned && overdueDays > 0;
  String get studentName => students?.fullName ?? '';
}

/// A locked-in fine on a returned book (`returned_unpaid` rows of
/// /fines/pending — the book_fines row spread with its issue).
@freezed
abstract class PendingFine with _$PendingFine {
  const factory PendingFine({
    @JsonKey(name: 'fine_id') required String fineId,
    @JsonKey(name: 'issue_id') required String issueId,
    @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal fineAmount,
    @JsonKey(name: 'issue_date') DateTime? issueDate,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    @JsonKey(name: 'returned_at') DateTime? returnedAt,
    LibraryBookRef? books,
    LibraryStudentRef? students,
  }) = _PendingFine;

  factory PendingFine.fromJson(Map<String, dynamic> json) => _$PendingFineFromJson(json);
}

/// GET /librarian/fines/pending.
@freezed
abstract class PendingFines with _$PendingFines {
  const factory PendingFines({
    @JsonKey(name: 'returned_unpaid') @Default(<PendingFine>[]) List<PendingFine> returnedUnpaid,
    @JsonKey(name: 'still_issued_overdue') @Default(<BookIssue>[]) List<BookIssue> stillIssuedOverdue,
  }) = _PendingFines;

  factory PendingFines.fromJson(Map<String, dynamic> json) => _$PendingFinesFromJson(json);
}

/// One row of GET /librarian/fines/history and the fine-collection report:
/// a book_fines row with its `book_issues` (+ book + student).
@freezed
abstract class FineRecord with _$FineRecord {
  const factory FineRecord({
    @JsonKey(name: 'fine_id') required String fineId,
    @JsonKey(name: 'issue_id') required String issueId,
    @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal fineAmount,
    @JsonKey(name: 'fine_paid') @Default(false) bool finePaid,
    @JsonKey(name: 'fine_paid_at') DateTime? finePaidAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'book_issues') FineRecordIssue? issue,
  }) = _FineRecord;

  factory FineRecord.fromJson(Map<String, dynamic> json) => _$FineRecordFromJson(json);
}

@freezed
abstract class FineRecordIssue with _$FineRecordIssue {
  const factory FineRecordIssue({
    @JsonKey(name: 'issue_date') DateTime? issueDate,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    @JsonKey(name: 'returned_at') DateTime? returnedAt,
    LibraryBookRef? books,
    LibraryStudentRef? students,
  }) = _FineRecordIssue;

  factory FineRecordIssue.fromJson(Map<String, dynamic> json) => _$FineRecordIssueFromJson(json);
}

/// GET /librarian/dashboard. `pending_fines` is computed (a JS number).
@freezed
abstract class LibrarianDashboard with _$LibrarianDashboard {
  const factory LibrarianDashboard({
    @JsonKey(name: 'total_books') @Default(0) int totalBooks,
    @JsonKey(name: 'total_copies') @Default(0) int totalCopies,
    @JsonKey(name: 'available_books') @Default(0) int availableBooks,
    @JsonKey(name: 'issued_books') @Default(0) int issuedBooks,
    @JsonKey(name: 'overdue_books') @Default(0) int overdueBooks,
    @JsonKey(name: 'pending_fines', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal pendingFines,
    @JsonKey(name: 'today_activity') @Default(LibraryTodayActivity()) LibraryTodayActivity todayActivity,
  }) = _LibrarianDashboard;

  factory LibrarianDashboard.fromJson(Map<String, dynamic> json) => _$LibrarianDashboardFromJson(json);
}

@freezed
abstract class LibraryTodayActivity with _$LibraryTodayActivity {
  const factory LibraryTodayActivity({
    @Default(0) int issued,
    @Default(0) int returned,
  }) = _LibraryTodayActivity;

  factory LibraryTodayActivity.fromJson(Map<String, dynamic> json) => _$LibraryTodayActivityFromJson(json);
}

/// GET /librarian/students/search (max 50 rows).
@freezed
abstract class LibraryStudentHit with _$LibraryStudentHit {
  const factory LibraryStudentHit({
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'admission_no') String? admissionNo,
    @JsonKey(name: 'roll_no') String? rollNo,
    @JsonKey(name: 'current_class') LibraryClassRef? currentClass,
    @JsonKey(name: 'current_section') LibrarySectionRef? currentSection,
    LibraryApplicantRef? applicants,
  }) = _LibraryStudentHit;

  factory LibraryStudentHit.fromJson(Map<String, dynamic> json) => _$LibraryStudentHitFromJson(json);
}

extension LibraryStudentHitX on LibraryStudentHit {
  String get fullName => _fullName(applicants);
  String get classLabel =>
      [currentClass?.className, currentSection?.sectionName].where((p) => p != null && p.isNotEmpty).join(' - ');
}

@freezed
abstract class LibraryClassRef with _$LibraryClassRef {
  const factory LibraryClassRef({
    @JsonKey(name: 'class_name') String? className,
  }) = _LibraryClassRef;

  factory LibraryClassRef.fromJson(Map<String, dynamic> json) => _$LibraryClassRefFromJson(json);
}

@freezed
abstract class LibrarySectionRef with _$LibrarySectionRef {
  const factory LibrarySectionRef({
    @JsonKey(name: 'section_name') String? sectionName,
  }) = _LibrarySectionRef;

  factory LibrarySectionRef.fromJson(Map<String, dynamic> json) => _$LibrarySectionRefFromJson(json);
}

Decimal? _nullableDecimal(dynamic v) => v == null ? null : decimalFromJson(v);
String? _nullableDecimalToJson(Decimal? v) => v?.toString();

/// GET /librarian/fine-settings (read-only on mobile).
@freezed
abstract class LibraryFineSettings with _$LibraryFineSettings {
  const factory LibraryFineSettings({
    @JsonKey(name: 'rate_per_day', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal ratePerDay,
    @JsonKey(name: 'grace_period_days') @Default(0) int gracePeriodDays,
    @JsonKey(name: 'max_fine_per_book', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson)
    Decimal? maxFinePerBook,
  }) = _LibraryFineSettings;

  factory LibraryFineSettings.fromJson(Map<String, dynamic> json) => _$LibraryFineSettingsFromJson(json);
}

/// GET /librarian/reports/inventory.
@freezed
abstract class InventoryReport with _$InventoryReport {
  const factory InventoryReport({
    @JsonKey(name: 'total_titles') @Default(0) int totalTitles,
    @JsonKey(name: 'total_copies') @Default(0) int totalCopies,
    @JsonKey(name: 'available_copies') @Default(0) int availableCopies,
    @JsonKey(name: 'by_category') @Default(<InventoryCategoryRow>[]) List<InventoryCategoryRow> byCategory,
  }) = _InventoryReport;

  factory InventoryReport.fromJson(Map<String, dynamic> json) => _$InventoryReportFromJson(json);
}

@freezed
abstract class InventoryCategoryRow with _$InventoryCategoryRow {
  const factory InventoryCategoryRow({
    String? category,
    @Default(0) int titles,
    @JsonKey(name: 'total_copies') @Default(0) int totalCopies,
    @JsonKey(name: 'available_copies') @Default(0) int availableCopies,
  }) = _InventoryCategoryRow;

  factory InventoryCategoryRow.fromJson(Map<String, dynamic> json) => _$InventoryCategoryRowFromJson(json);
}

/// GET /librarian/reports/overdue.
@freezed
abstract class OverdueReport with _$OverdueReport {
  const factory OverdueReport({
    @Default(0) int count,
    @JsonKey(name: 'total_fine', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalFine,
    @Default(<BookIssue>[]) List<BookIssue> items,
  }) = _OverdueReport;

  factory OverdueReport.fromJson(Map<String, dynamic> json) => _$OverdueReportFromJson(json);
}

/// GET /librarian/reports/fine-collection.
@freezed
abstract class FineCollectionReport with _$FineCollectionReport {
  const factory FineCollectionReport({
    @Default(0) int count,
    @JsonKey(name: 'total_collected', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalCollected,
    @Default(<FineRecord>[]) List<FineRecord> items,
  }) = _FineCollectionReport;

  factory FineCollectionReport.fromJson(Map<String, dynamic> json) => _$FineCollectionReportFromJson(json);
}
