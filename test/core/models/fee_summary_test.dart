// fee_category, previous_payments (incl. nested receipt items), and
// total_due are captured LIVE from GET /parent/children/:studentId/fees.
// scholarships/pending_items/fee_plans are constructed from the backend
// source (utils/feeDues.js, utils/feeInstallments.js,
// admin/student/students.service.js's own `include`) since this test
// account's live response has all three as empty arrays — clearly
// labeled as such, not passed off as verified live data.

import 'package:decimal/decimal.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:edusoft_mobile/core/models/fee_summary.dart';

const _liveFeeSummary = {
  'fee_category': {'fee_category_id': 'c9a257b4-de1c-4cf4-be65-ceac258a41a3', 'category_name': 'General'},
  'scholarships': [],
  'previous_payments': [
    {
      'receipt_id': '8f4a60ec-a253-46b7-8c6d-9e4b90c24f35',
      'receipt_no': 'RCPT-20260803-9828',
      'receipt_date': '2026-08-03T00:00:00.000Z',
      'total_amount': '5000',
      'discount_amount': '0',
      'fine_amount': '0',
      'net_amount': '5000',
      'payment_mode': 'ONLINE',
      'receipt_status': 'PAID',
      'remarks': 'PhonePe payment OMO2608031617459407315043',
      'student_fee_receipt_items': [
        {
          'receipt_item_id': 'f221db6d-038a-4d25-89a6-84ed1f2a6062',
          'fee_head_name': 'Transport Fee',
          'amount': '5000',
          'discount_amount': '0',
          'fine_amount': '0',
          'net_amount': '5000',
          'remarks': null,
        },
      ],
    },
  ],
  'pending_items': [],
  'total_due': 0, // raw JSON number, not "0" — verified live
  'fee_plans': [],
};

// Constructed — see file header.
const _syntheticPendingItem = {
  'fee_structure_id': 'fs1',
  'fee_head_id': 'fh1',
  'fee_head_name': 'Tuition Fee',
  'due_date': '2026-10-01T00:00:00.000Z',
  'amount': 12000,
  'net_due': 9000,
  'suggested_fine_amount': 150.5,
  'status': 'OVERDUE',
};

void main() {
  test('FeeSummary.fromJson parses fee_category, total_due (raw number), and receipts (string amounts)', () {
    final summary = FeeSummary.fromJson(_liveFeeSummary);

    expect(summary.feeCategory?.categoryName, 'General');
    expect(summary.totalDue, Decimal.zero);
    expect(summary.previousPayments, hasLength(1));

    final receipt = summary.previousPayments.single;
    expect(receipt.receiptNo, 'RCPT-20260803-9828');
    expect(receipt.netAmount, Decimal.parse('5000'));
    expect(receipt.items.single.feeHeadName, 'Transport Fee');
  });

  test('PendingFeeItem.fromJson parses Number()-computed fields including a fractional fine', () {
    final item = PendingFeeItem.fromJson(_syntheticPendingItem);

    expect(item.status, PendingItemStatus.overdue);
    expect(item.netDue, Decimal.parse('9000'));
    expect(item.suggestedFineAmount, Decimal.parse('150.5'));
  });

  test('falls back to unknown for an unrecognized pending item status', () {
    final json = {..._syntheticPendingItem, 'status': 'SOME_FUTURE_STATUS'};
    final item = PendingFeeItem.fromJson(json);
    expect(item.status, PendingItemStatus.unknown);
  });
}
