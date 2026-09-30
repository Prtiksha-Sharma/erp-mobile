// Parses payloads shaped exactly like the /student/* responses, as read
// from the backend source (see each model's doc comment for the file):
//   - Prisma Decimal columns arrive as JSON strings ("100", "3"), while
//     service-computed totals/balances arrive as JSON numbers — both must
//     parse into Decimal.
//   - @db.Date is UTC midnight; @db.Time is a 1970-01-01 epoch datetime.
//   - Unpublished report cards are a 200 with student: null + message.
//   - /medical and /transport can legitimately be null (service handles it).

import 'package:decimal/decimal.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:edusoft_mobile/core/models/student_certificates.dart';
import 'package:edusoft_mobile/core/models/student_exams.dart';
import 'package:edusoft_mobile/core/models/student_fees.dart';
import 'package:edusoft_mobile/core/models/student_profile.dart';
import 'package:edusoft_mobile/core/models/student_records.dart';
import 'package:edusoft_mobile/core/utils/formatters.dart';

Decimal d(String s) => Decimal.parse(s);

void main() {
  group('StudentProfile.fromJson', () {
    final json = {
      'student_id': 's1',
      'application_id': 'a1',
      'admission_no': 'GHPS-2026-001',
      'admission_date': '2026-04-01T00:00:00.000Z',
      'roll_no': '12',
      'student_status': 'ACTIVE',
      'institutions': {'institution_id': 'i1', 'institution_name': 'Green Hills Public School'},
      'current_class': {'class_id': 'c1', 'class_name': 'Class 8'},
      'current_section': {'section_id': 'sec1', 'section_name': 'A'},
      'applicants': {
        'first_name': 'Asha',
        'middle_name': null,
        'last_name': 'Verma',
        'gender': 'Female',
        'dob': '2013-05-10T00:00:00.000Z',
        'blood_group': 'O+',
        'nationality': 'Indian',
        'contact_no': '9876543210',
        'email_id': 'asha@example.com',
        'photo_url': null,
        'categories': {'category_id': 'cat1', 'category_name': 'General'},
        'religions': null,
      },
      'admission_applications': {
        'application_id': 'a1',
        'registration_fee': '500',
        'parents': [
          {'parent_id': 'p1', 'relation_type': 'Mother', 'first_name': 'Nita', 'last_name': 'Verma', 'mobile_no': '99', 'email': null, 'annual_income': '600000'},
        ],
        'previous_schools': [
          {'previous_school_id': 'ps1', 'school_name': 'Little Stars', 'board_name': 'CBSE', 'class_last_attended': '7', 'percentage': '88.5'},
        ],
        'siblings': [],
      },
      'student_addresses': [
        {'address_id': 'ad1', 'address_type': 'CORRESPONDENCE', 'address_line_1': '12 MG Road', 'address_line_2': null, 'landmark': 'Near Park', 'city': 'Pune', 'state': 'MH', 'pincode': '411001'},
      ],
      'student_documents': [
        {'document_id': 'd1', 'file_size': '2048'},
      ],
      'student_id_cards': [
        {'id_card_id': 'id1', 'card_number': 'IDC-2026-00001', 'issue_date': '2026-04-02T00:00:00.000Z', 'expiry_date': '2027-04-02T00:00:00.000Z'},
      ],
      'student_enrollments': [
        {'enrollment_id': 'e1', 'academic_sessions': {'session_id': 'ss1', 'session_name': '2026-27'}},
      ],
      'student_accounts': [
        {'user_id': 'u1'},
      ],
    };

    test('parses the nested profile and exposes display helpers', () {
      final p = StudentProfile.fromJson(json);
      expect(p.fullName, 'Asha Verma');
      expect(p.className, 'Class 8');
      expect(p.sectionName, 'A');
      expect(p.institutionName, 'Green Hills Public School');
      expect(p.sessionName, '2026-27');
      expect(p.rollNo, '12');
      expect(p.applicant?.category?.categoryName, 'General');
      expect(p.applicant?.religion, isNull);
      expect(p.parents.single.relationType, 'Mother');
      expect(p.previousSchools.single.percentage, '88.5');
      expect(p.addresses.single.addressLine1, '12 MG Road');
      expect(p.idCard?.cardNumber, 'IDC-2026-00001');
    });

    test('tolerates a numeric roll_no and a name-less applicant', () {
      final p = StudentProfile.fromJson({
        ...json,
        'roll_no': 7,
        'applicants': {'first_name': null, 'last_name': ' '},
        'student_enrollments': [],
      });
      expect(p.rollNo, '7');
      expect(p.fullName, isNull);
      expect(p.displayName, 'GHPS-2026-001');
      expect(p.sessionName, isNull);
    });
  });

  test('StudentIdCard / StudentCertificate parse', () {
    final card = StudentIdCard.fromJson({
      'id_card_id': 'id1',
      'student_id': 's1',
      'card_number': 'IDC-2026-00001',
      'issue_date': '2026-09-30T10:15:00.000Z', // fresh create: full timestamp
      'expiry_date': '2027-09-30T10:15:00.000Z',
      'qr_code_url': null,
      'student_name': 'Asha Verma',
      'admission_no': 'GHPS-2026-001',
      'class_name': 'Class 8',
      'section_name': null,
      'institution_name': 'Green Hills',
      'session_name': '2026-27',
    });
    expect(card.studentName, 'Asha Verma');
    expect(card.sectionName, isNull);

    final cert = StudentCertificate.fromJson({
      'certificate_type': 'bonafide',
      'issued_date': '2026-09-30T10:15:00.000Z',
      'student': {'name': 'Asha Verma', 'admission_no': 'GHPS-2026-001', 'class_name': 'Class 8', 'section_name': 'A'},
      'institution_name': 'Green Hills',
      'content': 'This is to certify that…',
    });
    expect(cert.student?.admissionNo, 'GHPS-2026-001');
    expect(CertificateType.values.map((t) => t.path), ['bonafide', 'character', 'study', 'leaving']);
  });

  test('StudentLeave: total_days is a Decimal string', () {
    final leave = StudentLeave.fromJson({
      'leave_id': 'l1',
      'student_id': 's1',
      'leave_type': 'Medical',
      'from_date': '2026-09-01T00:00:00.000Z',
      'to_date': '2026-09-03T00:00:00.000Z',
      'total_days': '3',
      'reason': null,
      'status': 'PENDING',
      'remarks': null,
    });
    expect(leave.totalDays, 3);
    expect(formatDate(leave.fromDate), '01 Sep 2026');
  });

  group('Exams', () {
    Map<String, dynamic> schedule(String id, String examId, String subject, String? date) => {
          'exam_schedule_id': id,
          'exam_date': date,
          'start_time': '1970-01-01T09:30:00.000Z',
          'end_time': '1970-01-01T12:30:00.000Z',
          'max_marks': '100',
          'passing_marks': '33',
          'room': null,
          'exams': {
            'exam_id': examId,
            'exam_name': examId == 'x1' ? 'Half Yearly' : 'Unit Test 1',
            'exam_types': {'type_name': 'Term'},
          },
          'academic_subjects': {'subject_id': 'sub-$subject', 'subject_name': subject},
        };

    test('groups schedule rows by exam in first-seen order', () {
      final rows = [
        schedule('1', 'x1', 'Maths', '2026-10-01T00:00:00.000Z'),
        schedule('2', 'x2', 'Science', null),
        schedule('3', 'x1', 'English', '2026-10-02T00:00:00.000Z'),
      ].map(ExamSchedule.fromJson).toList();

      final groups = groupSchedulesByExam(rows);
      expect(groups.map((g) => g.exam.examName), ['Half Yearly', 'Unit Test 1']);
      expect(groups.first.subjects, hasLength(2));
      expect(rows.first.maxMarks, 100);
      expect(formatClockTime(rows.first.startTime), '9:30 AM');
    });

    test('unpublished report card: 200 with student null + message', () {
      final card = ReportCard.fromJson({
        'exam': null,
        'is_published': false,
        'class_average_percentage': null,
        'student': null,
        'message': 'Results for this exam have not been published yet.',
      });
      expect(card.isPublished, isFalse);
      expect(card.student, isNull);
      expect(card.message, contains('not been published'));
    });

    test('published report card: Decimal-string marks, numeric totals', () {
      final card = ReportCard.fromJson({
        'is_published': true,
        'class_average_percentage': 71.2,
        'student': {
          'student_id': 's1',
          'subjects': [
            {'subject_id': 'm', 'subject_name': 'Maths', 'marks_obtained': '87.5', 'is_absent': false, 'attendance_status': 'PRESENT', 'max_marks': '100', 'passing_marks': '33', 'grade': 'A', 'result': 'PASS'},
            {'subject_id': 'e', 'subject_name': 'English', 'marks_obtained': null, 'is_absent': true, 'attendance_status': 'ABSENT', 'max_marks': '100', 'passing_marks': '33', 'grade': null, 'result': 'ABSENT'},
          ],
          'total_obtained': 87.5,
          'total_max': 200,
          'percentage': 43.75,
          'overall_result': 'ABSENT',
          'rank': 4,
        },
      });
      final s = card.student!;
      expect(s.subjects.first.marksObtained, d('87.5'));
      expect(s.subjects.last.wasAbsent, isTrue);
      expect(s.totalMax, d('200'));
      expect(s.percentage, d('43.75'));
      expect(s.rank, 4);
    });

    test('attendance_status ABSENT alone still reads as absent', () {
      final sub = ReportCardSubject.fromJson({
        'subject_id': 'e',
        'subject_name': 'English',
        'marks_obtained': null,
        'attendance_status': 'ABSENT',
      });
      expect(sub.wasAbsent, isTrue);
    });
  });

  group('Fees', () {
    test('summary / pending dues: plain JSON numbers', () {
      expect(FeeSummary.fromJson({'total_paid': 12500.5, 'receipt_count': 3}).totalPaid, d('12500.5'));

      final dues = PendingDues.fromJson({
        'items': [
          {'fee_structure_id': 'fs1', 'fee_head_id': 'h1', 'fee_head_name': 'Tuition', 'due_date': '2026-10-10T00:00:00.000Z', 'amount': 20000, 'concession_amount': 0, 'paid_amount': 5000, 'net_due': 15000, 'status': 'PARTIALLY_PAID'},
          {'fee_structure_id': null, 'fee_head_id': 'h2', 'fee_head_name': 'Transport Fee', 'due_date': null, 'amount': 6000, 'concession_amount': 0, 'paid_amount': 0, 'net_due': 6000, 'status': 'DUE'},
        ],
        'total_due': 21000,
      });
      expect(dues.totalDue, d('21000'));
      expect(dues.items.last.feeStructureId, isNull);
      expect(formatAmount(dues.totalDue), '₹21,000.00');
    });

    test('receipt: Decimal strings, with line items', () {
      final r = FeeReceipt.fromJson({
        'receipt_id': 'r1',
        'receipt_no': 'RCPT-0001',
        'receipt_date': '2026-08-15T00:00:00.000Z',
        'total_amount': '5000',
        'net_amount': '4500',
        'payment_mode': 'UPI',
        'receipt_status': 'PAID',
        'student_fee_receipt_items': [
          {'receipt_item_id': 'ri1', 'receipt_id': 'r1', 'fee_head_name': 'Tuition', 'amount': '5000', 'net_amount': '4500'},
        ],
      });
      expect(r.netAmount, d('4500'));
      expect(r.items.single.netAmount, d('4500'));
    });

    test('fee plan: { plans: [...] } per fee head; mixed Decimal/number', () {
      final entry = FeePlanEntry.fromJson({
        'plan': {
          'plan_id': 'pl1',
          'student_id': 's1',
          'session_id': 'ss1',
          'fee_head_id': 'h1',
          'frequency': 'QUARTERLY',
          'selected_at': '2026-07-01T08:00:00.000Z',
          'fee_heads': {'fee_head_name': 'Tuition'},
        },
        'fee_head_name': 'Tuition',
        'installments': [
          {'installment_id': 'in1', 'period_index': 1, 'period_label': 'Apr–Jun', 'due_date': '2026-04-10T00:00:00.000Z', 'amount': '5000', 'paid_amount': 5000, 'balance': 0, 'status': 'PAID'},
          {'installment_id': 'in2', 'period_index': 2, 'period_label': 'Jul–Sep', 'due_date': '2026-07-10T00:00:00.000Z', 'amount': '5000', 'paid_amount': 0, 'balance': 5000, 'status': 'OVERDUE'},
        ],
      });
      expect(entry.plan.feeHeadId, 'h1');
      expect(entry.installments.first.amount, d('5000'));
      expect(entry.installments.last.balance, d('5000'));
      expect(humanizeEnum(entry.plan.frequency), 'Quarterly');
      expect(feePlanFrequencies, ['MONTHLY', 'QUARTERLY', 'HALF_YEARLY', 'YEARLY']);
    });
  });

  test('records: documents, medical, discipline, promotion, transport', () {
    final doc = StudentDocument.fromJson({
      'document_id': 'd1',
      'student_id': 's1',
      'document_name': 'Birth Certificate',
      'file_name': 'birth.pdf',
      'file_url': 'https://res.cloudinary.com/x/birth.pdf',
      'file_size': 204800,
      'verification_status': 'VERIFIED',
      'uploaded_at': '2026-05-01T09:12:00.000Z',
    });
    expect(doc.fileSize, 204800);

    final medical = MedicalInfo.fromJson({'medical_id': 'm1', 'blood_group': 'O+', 'height_cm': '152.5', 'weight_kg': '41'});
    expect(medical.heightCm, '152.5');

    final discipline = DisciplineRecord.fromJson({
      'discipline_id': 'dc1',
      'incident_date': '2026-08-20T00:00:00.000Z',
      'incident_type': 'Late to class',
      'severity': 'MINOR',
      'status': 'RESOLVED',
      'resolved_at': '2026-08-21T10:00:00.000Z',
      'reported_by': 'u9',
    });
    expect(discipline.status, 'RESOLVED');

    final promotion = PromotionRecord.fromJson({
      'promotion_id': 'pr1',
      'promotion_status': 'PROMOTED',
      'promoted_at': '2026-04-01T06:00:00.000Z',
      'from_session': {'session_name': '2025-26'},
      'to_session': {'session_name': '2026-27'},
      'from_class': {'class_name': 'Class 7'},
      'to_class': {'class_name': 'Class 8'},
      'from_section': null,
      'to_section': {'section_name': 'A'},
      'promoted_by_user': {'username': 'admin'},
    });
    expect(promotion.toClass?.className, 'Class 8');
    expect(promotion.fromSection, isNull);

    final transport = TransportAssignment.fromJson({
      'route': {'route_id': 'rt1', 'route_name': 'Route 4 — East'},
      'stop': {'stop_id': 'st1', 'stop_name': 'City Mall', 'pickup_time': '1970-01-01T07:05:00.000Z', 'drop_time': null},
      'bus': {'bus_number': 'MH12 AB 1234', 'capacity': 40},
      'driver': null,
      'session': {'session_id': 'ss1', 'session_name': '2026-27'},
    });
    expect(transport.route.routeName, 'Route 4 — East');
    expect(formatClockTime(transport.stop?.pickupTime), '7:05 AM');
    expect(transport.driver, isNull);
  });

  group('formatters', () {
    test('clock range collapses a shared AM/PM', () {
      expect(
        formatClockRange(DateTime.utc(1970, 1, 1, 9), DateTime.utc(1970, 1, 1, 9, 45)),
        '9:00 - 9:45 AM',
      );
      expect(
        formatClockRange(DateTime.utc(1970, 1, 1, 11, 30), DateTime.utc(1970, 1, 1, 12, 15)),
        '11:30 AM - 12:15 PM',
      );
    });

    test('humanizeEnum', () {
      expect(humanizeEnum('HALF_YEARLY'), 'Half Yearly');
      expect(humanizeEnum(null), '—');
    });
  });
}
