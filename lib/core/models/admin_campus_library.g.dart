// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_campus_library.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LibraryBook _$LibraryBookFromJson(Map<String, dynamic> json) => _LibraryBook(
  bookId: json['book_id'] as String,
  title: json['title'] as String,
  author: json['author'] as String?,
  accessionNo: json['accession_no'] as String?,
  category: json['category'] as String?,
  totalCopies: (json['total_copies'] as num?)?.toInt() ?? 0,
  availableCopies: (json['available_copies'] as num?)?.toInt() ?? 0,
  isActive: json['is_active'] as bool? ?? true,
  publisher: json['publisher'] as String?,
  edition: json['edition'] as String?,
  publicationYear: (json['publication_year'] as num?)?.toInt(),
  language: json['language'] as String?,
  shelfRack: json['shelf_rack'] as String?,
  instituteClass: json['institute_class'] as String?,
);

Map<String, dynamic> _$LibraryBookToJson(_LibraryBook instance) =>
    <String, dynamic>{
      'book_id': instance.bookId,
      'title': instance.title,
      'author': instance.author,
      'accession_no': instance.accessionNo,
      'category': instance.category,
      'total_copies': instance.totalCopies,
      'available_copies': instance.availableCopies,
      'is_active': instance.isActive,
      'publisher': instance.publisher,
      'edition': instance.edition,
      'publication_year': instance.publicationYear,
      'language': instance.language,
      'shelf_rack': instance.shelfRack,
      'institute_class': instance.instituteClass,
    };

_LibraryBookRef _$LibraryBookRefFromJson(Map<String, dynamic> json) =>
    _LibraryBookRef(
      bookId: json['book_id'] as String?,
      title: json['title'] as String?,
      accessionNo: json['accession_no'] as String?,
    );

Map<String, dynamic> _$LibraryBookRefToJson(_LibraryBookRef instance) =>
    <String, dynamic>{
      'book_id': instance.bookId,
      'title': instance.title,
      'accession_no': instance.accessionNo,
    };

_LibraryIssue _$LibraryIssueFromJson(Map<String, dynamic> json) =>
    _LibraryIssue(
      issueId: json['issue_id'] as String,
      issueDate: json['issue_date'] == null
          ? null
          : DateTime.parse(json['issue_date'] as String),
      dueDate: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      returnedAt: json['returned_at'] == null
          ? null
          : DateTime.parse(json['returned_at'] as String),
      status: json['status'] as String?,
      book: json['books'] == null
          ? null
          : LibraryBookRef.fromJson(json['books'] as Map<String, dynamic>),
      student: json['students'] == null
          ? null
          : StudentBrief.fromJson(json['students'] as Map<String, dynamic>),
      overdueDays: (json['overdue_days'] as num?)?.toInt() ?? 0,
      fineAmount: const NullableDecimalConverter().fromJson(
        json['fine_amount'],
      ),
      fineId: json['fine_id'] as String?,
      finePaid: json['fine_paid'] as bool? ?? false,
      finePaidAt: json['fine_paid_at'] == null
          ? null
          : DateTime.parse(json['fine_paid_at'] as String),
    );

Map<String, dynamic> _$LibraryIssueToJson(
  _LibraryIssue instance,
) => <String, dynamic>{
  'issue_id': instance.issueId,
  'issue_date': instance.issueDate?.toIso8601String(),
  'due_date': instance.dueDate?.toIso8601String(),
  'returned_at': instance.returnedAt?.toIso8601String(),
  'status': instance.status,
  'books': instance.book,
  'students': instance.student,
  'overdue_days': instance.overdueDays,
  'fine_amount': const NullableDecimalConverter().toJson(instance.fineAmount),
  'fine_id': instance.fineId,
  'fine_paid': instance.finePaid,
  'fine_paid_at': instance.finePaidAt?.toIso8601String(),
};

_LibraryOverdueReport _$LibraryOverdueReportFromJson(
  Map<String, dynamic> json,
) => _LibraryOverdueReport(
  count: (json['count'] as num?)?.toInt() ?? 0,
  totalFine: const NullableDecimalConverter().fromJson(json['total_fine']),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => LibraryIssue.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <LibraryIssue>[],
);

Map<String, dynamic> _$LibraryOverdueReportToJson(
  _LibraryOverdueReport instance,
) => <String, dynamic>{
  'count': instance.count,
  'total_fine': const NullableDecimalConverter().toJson(instance.totalFine),
  'items': instance.items,
};

_LibraryActivityItem _$LibraryActivityItemFromJson(Map<String, dynamic> json) =>
    _LibraryActivityItem(
      activityType: json['activity_type'] as String,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      book: json['book'] == null
          ? null
          : LibraryBookRef.fromJson(json['book'] as Map<String, dynamic>),
      student: json['student'] == null
          ? null
          : StudentBrief.fromJson(json['student'] as Map<String, dynamic>),
      issueId: json['issue_id'] as String?,
      fineAmount: const NullableDecimalConverter().fromJson(
        json['fine_amount'],
      ),
      finePaid: json['fine_paid'] as bool?,
    );

Map<String, dynamic> _$LibraryActivityItemToJson(
  _LibraryActivityItem instance,
) => <String, dynamic>{
  'activity_type': instance.activityType,
  'timestamp': instance.timestamp?.toIso8601String(),
  'book': instance.book,
  'student': instance.student,
  'issue_id': instance.issueId,
  'fine_amount': const NullableDecimalConverter().toJson(instance.fineAmount),
  'fine_paid': instance.finePaid,
};

_LibraryFineSettings _$LibraryFineSettingsFromJson(Map<String, dynamic> json) =>
    _LibraryFineSettings(
      ratePerDay: const DecimalConverter().fromJson(json['rate_per_day']),
      gracePeriodDays: (json['grace_period_days'] as num?)?.toInt() ?? 0,
      maxFinePerBook: const NullableDecimalConverter().fromJson(
        json['max_fine_per_book'],
      ),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$LibraryFineSettingsToJson(
  _LibraryFineSettings instance,
) => <String, dynamic>{
  'rate_per_day': const DecimalConverter().toJson(instance.ratePerDay),
  'grace_period_days': instance.gracePeriodDays,
  'max_fine_per_book': const NullableDecimalConverter().toJson(
    instance.maxFinePerBook,
  ),
  'updated_at': instance.updatedAt?.toIso8601String(),
};
