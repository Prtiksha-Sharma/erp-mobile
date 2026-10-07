// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LibraryBook _$LibraryBookFromJson(Map<String, dynamic> json) => _LibraryBook(
  bookId: json['book_id'] as String,
  title: json['title'] as String,
  author: json['author'] as String?,
  accessionNo: json['accession_no'] as String?,
  category: json['category'] as String?,
  publisher: json['publisher'] as String?,
  edition: json['edition'] as String?,
  publicationYear: (json['publication_year'] as num?)?.toInt(),
  language: json['language'] as String?,
  shelfRack: json['shelf_rack'] as String?,
  instituteClass: json['institute_class'] as String?,
  totalCopies: (json['total_copies'] as num?)?.toInt() ?? 0,
  availableCopies: (json['available_copies'] as num?)?.toInt() ?? 0,
  isActive: json['is_active'] as bool? ?? true,
);

Map<String, dynamic> _$LibraryBookToJson(_LibraryBook instance) =>
    <String, dynamic>{
      'book_id': instance.bookId,
      'title': instance.title,
      'author': instance.author,
      'accession_no': instance.accessionNo,
      'category': instance.category,
      'publisher': instance.publisher,
      'edition': instance.edition,
      'publication_year': instance.publicationYear,
      'language': instance.language,
      'shelf_rack': instance.shelfRack,
      'institute_class': instance.instituteClass,
      'total_copies': instance.totalCopies,
      'available_copies': instance.availableCopies,
      'is_active': instance.isActive,
    };

_LibraryBookRef _$LibraryBookRefFromJson(Map<String, dynamic> json) =>
    _LibraryBookRef(
      bookId: json['book_id'] as String,
      title: json['title'] as String,
      accessionNo: json['accession_no'] as String?,
    );

Map<String, dynamic> _$LibraryBookRefToJson(_LibraryBookRef instance) =>
    <String, dynamic>{
      'book_id': instance.bookId,
      'title': instance.title,
      'accession_no': instance.accessionNo,
    };

_LibraryApplicantRef _$LibraryApplicantRefFromJson(Map<String, dynamic> json) =>
    _LibraryApplicantRef(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
    );

Map<String, dynamic> _$LibraryApplicantRefToJson(
  _LibraryApplicantRef instance,
) => <String, dynamic>{
  'first_name': instance.firstName,
  'last_name': instance.lastName,
};

_LibraryStudentRef _$LibraryStudentRefFromJson(Map<String, dynamic> json) =>
    _LibraryStudentRef(
      studentId: json['student_id'] as String,
      admissionNo: json['admission_no'] as String?,
      applicants: json['applicants'] == null
          ? null
          : LibraryApplicantRef.fromJson(
              json['applicants'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$LibraryStudentRefToJson(_LibraryStudentRef instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'admission_no': instance.admissionNo,
      'applicants': instance.applicants,
    };

_BookIssue _$BookIssueFromJson(Map<String, dynamic> json) => _BookIssue(
  issueId: json['issue_id'] as String,
  bookId: json['book_id'] as String?,
  studentId: json['student_id'] as String?,
  issueDate: json['issue_date'] == null
      ? null
      : DateTime.parse(json['issue_date'] as String),
  dueDate: json['due_date'] == null
      ? null
      : DateTime.parse(json['due_date'] as String),
  returnedAt: json['returned_at'] == null
      ? null
      : DateTime.parse(json['returned_at'] as String),
  status: json['status'] as String? ?? 'ISSUED',
  books: json['books'] == null
      ? null
      : LibraryBookRef.fromJson(json['books'] as Map<String, dynamic>),
  students: json['students'] == null
      ? null
      : LibraryStudentRef.fromJson(json['students'] as Map<String, dynamic>),
  overdueDays: (json['overdue_days'] as num?)?.toInt() ?? 0,
  fineAmount: decimalFromJson(json['fine_amount']),
  fineId: json['fine_id'] as String?,
  finePaid: json['fine_paid'] as bool? ?? false,
  finePaidAt: json['fine_paid_at'] == null
      ? null
      : DateTime.parse(json['fine_paid_at'] as String),
);

Map<String, dynamic> _$BookIssueToJson(_BookIssue instance) =>
    <String, dynamic>{
      'issue_id': instance.issueId,
      'book_id': instance.bookId,
      'student_id': instance.studentId,
      'issue_date': instance.issueDate?.toIso8601String(),
      'due_date': instance.dueDate?.toIso8601String(),
      'returned_at': instance.returnedAt?.toIso8601String(),
      'status': instance.status,
      'books': instance.books,
      'students': instance.students,
      'overdue_days': instance.overdueDays,
      'fine_amount': decimalToJson(instance.fineAmount),
      'fine_id': instance.fineId,
      'fine_paid': instance.finePaid,
      'fine_paid_at': instance.finePaidAt?.toIso8601String(),
    };

_PendingFine _$PendingFineFromJson(Map<String, dynamic> json) => _PendingFine(
  fineId: json['fine_id'] as String,
  issueId: json['issue_id'] as String,
  fineAmount: decimalFromJson(json['fine_amount']),
  issueDate: json['issue_date'] == null
      ? null
      : DateTime.parse(json['issue_date'] as String),
  dueDate: json['due_date'] == null
      ? null
      : DateTime.parse(json['due_date'] as String),
  returnedAt: json['returned_at'] == null
      ? null
      : DateTime.parse(json['returned_at'] as String),
  books: json['books'] == null
      ? null
      : LibraryBookRef.fromJson(json['books'] as Map<String, dynamic>),
  students: json['students'] == null
      ? null
      : LibraryStudentRef.fromJson(json['students'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PendingFineToJson(_PendingFine instance) =>
    <String, dynamic>{
      'fine_id': instance.fineId,
      'issue_id': instance.issueId,
      'fine_amount': decimalToJson(instance.fineAmount),
      'issue_date': instance.issueDate?.toIso8601String(),
      'due_date': instance.dueDate?.toIso8601String(),
      'returned_at': instance.returnedAt?.toIso8601String(),
      'books': instance.books,
      'students': instance.students,
    };

_PendingFines _$PendingFinesFromJson(Map<String, dynamic> json) =>
    _PendingFines(
      returnedUnpaid:
          (json['returned_unpaid'] as List<dynamic>?)
              ?.map((e) => PendingFine.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <PendingFine>[],
      stillIssuedOverdue:
          (json['still_issued_overdue'] as List<dynamic>?)
              ?.map((e) => BookIssue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <BookIssue>[],
    );

Map<String, dynamic> _$PendingFinesToJson(_PendingFines instance) =>
    <String, dynamic>{
      'returned_unpaid': instance.returnedUnpaid,
      'still_issued_overdue': instance.stillIssuedOverdue,
    };

_FineRecord _$FineRecordFromJson(Map<String, dynamic> json) => _FineRecord(
  fineId: json['fine_id'] as String,
  issueId: json['issue_id'] as String,
  fineAmount: decimalFromJson(json['fine_amount']),
  finePaid: json['fine_paid'] as bool? ?? false,
  finePaidAt: json['fine_paid_at'] == null
      ? null
      : DateTime.parse(json['fine_paid_at'] as String),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  issue: json['book_issues'] == null
      ? null
      : FineRecordIssue.fromJson(json['book_issues'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FineRecordToJson(_FineRecord instance) =>
    <String, dynamic>{
      'fine_id': instance.fineId,
      'issue_id': instance.issueId,
      'fine_amount': decimalToJson(instance.fineAmount),
      'fine_paid': instance.finePaid,
      'fine_paid_at': instance.finePaidAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'book_issues': instance.issue,
    };

_FineRecordIssue _$FineRecordIssueFromJson(Map<String, dynamic> json) =>
    _FineRecordIssue(
      issueDate: json['issue_date'] == null
          ? null
          : DateTime.parse(json['issue_date'] as String),
      dueDate: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      returnedAt: json['returned_at'] == null
          ? null
          : DateTime.parse(json['returned_at'] as String),
      books: json['books'] == null
          ? null
          : LibraryBookRef.fromJson(json['books'] as Map<String, dynamic>),
      students: json['students'] == null
          ? null
          : LibraryStudentRef.fromJson(
              json['students'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$FineRecordIssueToJson(_FineRecordIssue instance) =>
    <String, dynamic>{
      'issue_date': instance.issueDate?.toIso8601String(),
      'due_date': instance.dueDate?.toIso8601String(),
      'returned_at': instance.returnedAt?.toIso8601String(),
      'books': instance.books,
      'students': instance.students,
    };

_LibrarianDashboard _$LibrarianDashboardFromJson(Map<String, dynamic> json) =>
    _LibrarianDashboard(
      totalBooks: (json['total_books'] as num?)?.toInt() ?? 0,
      totalCopies: (json['total_copies'] as num?)?.toInt() ?? 0,
      availableBooks: (json['available_books'] as num?)?.toInt() ?? 0,
      issuedBooks: (json['issued_books'] as num?)?.toInt() ?? 0,
      overdueBooks: (json['overdue_books'] as num?)?.toInt() ?? 0,
      pendingFines: decimalFromJson(json['pending_fines']),
      todayActivity: json['today_activity'] == null
          ? const LibraryTodayActivity()
          : LibraryTodayActivity.fromJson(
              json['today_activity'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$LibrarianDashboardToJson(_LibrarianDashboard instance) =>
    <String, dynamic>{
      'total_books': instance.totalBooks,
      'total_copies': instance.totalCopies,
      'available_books': instance.availableBooks,
      'issued_books': instance.issuedBooks,
      'overdue_books': instance.overdueBooks,
      'pending_fines': decimalToJson(instance.pendingFines),
      'today_activity': instance.todayActivity,
    };

_LibraryTodayActivity _$LibraryTodayActivityFromJson(
  Map<String, dynamic> json,
) => _LibraryTodayActivity(
  issued: (json['issued'] as num?)?.toInt() ?? 0,
  returned: (json['returned'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$LibraryTodayActivityToJson(
  _LibraryTodayActivity instance,
) => <String, dynamic>{
  'issued': instance.issued,
  'returned': instance.returned,
};

_LibraryStudentHit _$LibraryStudentHitFromJson(Map<String, dynamic> json) =>
    _LibraryStudentHit(
      studentId: json['student_id'] as String,
      admissionNo: json['admission_no'] as String?,
      rollNo: json['roll_no'] as String?,
      currentClass: json['current_class'] == null
          ? null
          : LibraryClassRef.fromJson(
              json['current_class'] as Map<String, dynamic>,
            ),
      currentSection: json['current_section'] == null
          ? null
          : LibrarySectionRef.fromJson(
              json['current_section'] as Map<String, dynamic>,
            ),
      applicants: json['applicants'] == null
          ? null
          : LibraryApplicantRef.fromJson(
              json['applicants'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$LibraryStudentHitToJson(_LibraryStudentHit instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'admission_no': instance.admissionNo,
      'roll_no': instance.rollNo,
      'current_class': instance.currentClass,
      'current_section': instance.currentSection,
      'applicants': instance.applicants,
    };

_LibraryClassRef _$LibraryClassRefFromJson(Map<String, dynamic> json) =>
    _LibraryClassRef(className: json['class_name'] as String?);

Map<String, dynamic> _$LibraryClassRefToJson(_LibraryClassRef instance) =>
    <String, dynamic>{'class_name': instance.className};

_LibrarySectionRef _$LibrarySectionRefFromJson(Map<String, dynamic> json) =>
    _LibrarySectionRef(sectionName: json['section_name'] as String?);

Map<String, dynamic> _$LibrarySectionRefToJson(_LibrarySectionRef instance) =>
    <String, dynamic>{'section_name': instance.sectionName};

_LibraryFineSettings _$LibraryFineSettingsFromJson(Map<String, dynamic> json) =>
    _LibraryFineSettings(
      ratePerDay: decimalFromJson(json['rate_per_day']),
      gracePeriodDays: (json['grace_period_days'] as num?)?.toInt() ?? 0,
      maxFinePerBook: _nullableDecimal(json['max_fine_per_book']),
    );

Map<String, dynamic> _$LibraryFineSettingsToJson(
  _LibraryFineSettings instance,
) => <String, dynamic>{
  'rate_per_day': decimalToJson(instance.ratePerDay),
  'grace_period_days': instance.gracePeriodDays,
  'max_fine_per_book': _nullableDecimalToJson(instance.maxFinePerBook),
};

_InventoryReport _$InventoryReportFromJson(Map<String, dynamic> json) =>
    _InventoryReport(
      totalTitles: (json['total_titles'] as num?)?.toInt() ?? 0,
      totalCopies: (json['total_copies'] as num?)?.toInt() ?? 0,
      availableCopies: (json['available_copies'] as num?)?.toInt() ?? 0,
      byCategory:
          (json['by_category'] as List<dynamic>?)
              ?.map(
                (e) => InventoryCategoryRow.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <InventoryCategoryRow>[],
    );

Map<String, dynamic> _$InventoryReportToJson(_InventoryReport instance) =>
    <String, dynamic>{
      'total_titles': instance.totalTitles,
      'total_copies': instance.totalCopies,
      'available_copies': instance.availableCopies,
      'by_category': instance.byCategory,
    };

_InventoryCategoryRow _$InventoryCategoryRowFromJson(
  Map<String, dynamic> json,
) => _InventoryCategoryRow(
  category: json['category'] as String?,
  titles: (json['titles'] as num?)?.toInt() ?? 0,
  totalCopies: (json['total_copies'] as num?)?.toInt() ?? 0,
  availableCopies: (json['available_copies'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$InventoryCategoryRowToJson(
  _InventoryCategoryRow instance,
) => <String, dynamic>{
  'category': instance.category,
  'titles': instance.titles,
  'total_copies': instance.totalCopies,
  'available_copies': instance.availableCopies,
};

_OverdueReport _$OverdueReportFromJson(Map<String, dynamic> json) =>
    _OverdueReport(
      count: (json['count'] as num?)?.toInt() ?? 0,
      totalFine: decimalFromJson(json['total_fine']),
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => BookIssue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <BookIssue>[],
    );

Map<String, dynamic> _$OverdueReportToJson(_OverdueReport instance) =>
    <String, dynamic>{
      'count': instance.count,
      'total_fine': decimalToJson(instance.totalFine),
      'items': instance.items,
    };

_FineCollectionReport _$FineCollectionReportFromJson(
  Map<String, dynamic> json,
) => _FineCollectionReport(
  count: (json['count'] as num?)?.toInt() ?? 0,
  totalCollected: decimalFromJson(json['total_collected']),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => FineRecord.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <FineRecord>[],
);

Map<String, dynamic> _$FineCollectionReportToJson(
  _FineCollectionReport instance,
) => <String, dynamic>{
  'count': instance.count,
  'total_collected': decimalToJson(instance.totalCollected),
  'items': instance.items,
};
