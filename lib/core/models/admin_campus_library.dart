import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';
import 'student_brief.dart';

part 'admin_campus_library.freezed.dart';
part 'admin_campus_library.g.dart';

/// A `library.books` row, unselected — GET /admin/library/books and
/// GET /admin/library/books/:bookId (admin/library/books.service.js,
/// `findMany`/`findFirst` with no `select`, so every column of the model).
@freezed
abstract class LibraryBook with _$LibraryBook {
  const factory LibraryBook({
    @JsonKey(name: 'book_id') required String bookId,
    required String title,
    String? author,
    @JsonKey(name: 'accession_no') String? accessionNo,
    String? category,
    @JsonKey(name: 'total_copies') @Default(0) int totalCopies,
    @JsonKey(name: 'available_copies') @Default(0) int availableCopies,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    String? publisher,
    String? edition,
    @JsonKey(name: 'publication_year') int? publicationYear,
    String? language,
    @JsonKey(name: 'shelf_rack') String? shelfRack,
    @JsonKey(name: 'institute_class') String? instituteClass,
  }) = _LibraryBook;

  factory LibraryBook.fromJson(Map<String, dynamic> json) => _$LibraryBookFromJson(json);
}

/// `books: { book_id, title, accession_no }` — the book relation nested in
/// issues (issues.service.js) and the activity feed (activity.service.js).
@freezed
abstract class LibraryBookRef with _$LibraryBookRef {
  const factory LibraryBookRef({
    @JsonKey(name: 'book_id') String? bookId,
    String? title,
    @JsonKey(name: 'accession_no') String? accessionNo,
  }) = _LibraryBookRef;

  factory LibraryBookRef.fromJson(Map<String, dynamic> json) => _$LibraryBookRefFromJson(json);
}

/// A `book_issues` row + books/students includes, plus the live-computed
/// `overdue_days`/`fine_amount` (utils/libraryFine.js#computeFine — a JSON
/// number) and the flattened `book_fines` fields — admin/library/
/// issues.service.js#listIssues. `fine_id` is only set once an overdue book
/// has been returned (a still-issued row has an estimate only).
@freezed
abstract class LibraryIssue with _$LibraryIssue {
  const factory LibraryIssue({
    @JsonKey(name: 'issue_id') required String issueId,
    @JsonKey(name: 'issue_date') DateTime? issueDate,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    @JsonKey(name: 'returned_at') DateTime? returnedAt,
    String? status,
    @JsonKey(name: 'books') LibraryBookRef? book,
    @JsonKey(name: 'students') StudentBrief? student,
    @JsonKey(name: 'overdue_days') @Default(0) int overdueDays,
    @JsonKey(name: 'fine_amount') @NullableDecimalConverter() Decimal? fineAmount,
    @JsonKey(name: 'fine_id') String? fineId,
    @JsonKey(name: 'fine_paid') @Default(false) bool finePaid,
    @JsonKey(name: 'fine_paid_at') DateTime? finePaidAt,
  }) = _LibraryIssue;

  factory LibraryIssue.fromJson(Map<String, dynamic> json) => _$LibraryIssueFromJson(json);
}

/// GET /admin/library/reports/overdue → `{ count, total_fine, items }`
/// (issues.service.js#getOverdueReport; `total_fine` is a summed number).
@freezed
abstract class LibraryOverdueReport with _$LibraryOverdueReport {
  const factory LibraryOverdueReport({
    @Default(0) int count,
    @JsonKey(name: 'total_fine') @NullableDecimalConverter() Decimal? totalFine,
    @Default(<LibraryIssue>[]) List<LibraryIssue> items,
  }) = _LibraryOverdueReport;

  factory LibraryOverdueReport.fromJson(Map<String, dynamic> json) => _$LibraryOverdueReportFromJson(json);
}

/// One entry of GET /admin/library/activity (activity.service.js
/// #getRecentActivity): BOOK_ADDED has no student; only FINE_RECORDED has
/// `fine_amount` (a Prisma Decimal string) / `fine_paid`. `activity_type`
/// stays a String so an unknown type never breaks the feed.
@freezed
abstract class LibraryActivityItem with _$LibraryActivityItem {
  const factory LibraryActivityItem({
    @JsonKey(name: 'activity_type') required String activityType,
    DateTime? timestamp,
    LibraryBookRef? book,
    StudentBrief? student,
    @JsonKey(name: 'issue_id') String? issueId,
    @JsonKey(name: 'fine_amount') @NullableDecimalConverter() Decimal? fineAmount,
    @JsonKey(name: 'fine_paid') bool? finePaid,
  }) = _LibraryActivityItem;

  factory LibraryActivityItem.fromJson(Map<String, dynamic> json) => _$LibraryActivityItemFromJson(json);
}

/// GET/PUT /admin/library/fine-settings (fineSettings.service.js) — never a
/// 404: an unconfigured school gets `{ rate_per_day: 2, grace_period_days:
/// 0, max_fine_per_book: null, updated_at: null }`. Amounts are Numbers.
@freezed
abstract class LibraryFineSettings with _$LibraryFineSettings {
  const factory LibraryFineSettings({
    @JsonKey(name: 'rate_per_day') @DecimalConverter() required Decimal ratePerDay,
    @JsonKey(name: 'grace_period_days') @Default(0) int gracePeriodDays,
    @JsonKey(name: 'max_fine_per_book') @NullableDecimalConverter() Decimal? maxFinePerBook,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _LibraryFineSettings;

  factory LibraryFineSettings.fromJson(Map<String, dynamic> json) => _$LibraryFineSettingsFromJson(json);
}
