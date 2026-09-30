// Constructed from a direct read of parent/payments.service.js's own return
// statements (initiate/initiateInstallmentPayment/
// verifyAndUpdateParentFeePayment) — not live-captured, the auth token
// expired before a fresh login could be taken for this slice. See
// lib/core/models/payment.dart's own comment for the full reasoning.

import 'package:decimal/decimal.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:edusoft_mobile/core/models/payment.dart';

void main() {
  group('PaymentInitiation.fromJson', () {
    test('parses the camelCase initiate response with a plain-number amount', () {
      final initiation = PaymentInitiation.fromJson({
        'paymentId': 'p1',
        'merchantOrderId': 'fee-p1',
        'redirectUrl': 'https://mercury-t2.phonepe.com/transact/checkout123',
        'amount': 5000.5,
      });

      expect(initiation.paymentId, 'p1');
      expect(initiation.merchantOrderId, 'fee-p1');
      expect(initiation.amount, Decimal.parse('5000.5'));
    });
  });

  group('PaymentStatusResult.fromJson', () {
    test('parses each of the three known statuses', () {
      expect(
        PaymentStatusResult.fromJson({'status': 'Success', 'merchantOrderId': 'fee-p1'}).status,
        PaymentStatus.success,
      );
      expect(
        PaymentStatusResult.fromJson({'status': 'Failed', 'merchantOrderId': 'fee-p1'}).status,
        PaymentStatus.failed,
      );
      expect(
        PaymentStatusResult.fromJson({'status': 'Pending', 'merchantOrderId': 'fee-p1'}).status,
        PaymentStatus.pending,
      );
    });

    test('falls back to unknown for an unrecognized status value', () {
      final result = PaymentStatusResult.fromJson({'status': 'SomeFutureState', 'merchantOrderId': 'fee-p1'});
      expect(result.status, PaymentStatus.unknown);
    });
  });
}
