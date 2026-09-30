import 'package:flutter/material.dart';

import '../../../core/models/payment.dart';
import '../../../core/storage/secure_storage.dart';
import '../screens/payment_result_screen.dart';
import '../screens/payment_webview_screen.dart';

/// Shared by every "Pay" action (all dues, a single installment, or a
/// resumed payment on cold start) — persists the pending-payment marker
/// BEFORE the gateway opens (so an app kill mid-payment is still
/// recoverable, see SecureStorage.setPendingPayment), shows the in-app
/// checkout, then always hands off to PaymentResultScreen to reconcile the
/// real outcome rather than trusting that the WebView closed for a good
/// reason.
Future<void> launchPayment(
  BuildContext context, {
  required String studentId,
  required PaymentInitiation initiation,
}) async {
  await SecureStorage.instance.setPendingPayment(
    studentId: studentId,
    merchantOrderId: initiation.merchantOrderId,
  );

  if (!context.mounted) return;
  await Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => PaymentWebViewScreen(redirectUrl: initiation.redirectUrl)),
  );

  if (!context.mounted) return;
  await Navigator.of(context).push(
    MaterialPageRoute(
      builder: (_) => PaymentResultScreen(studentId: studentId, merchantOrderId: initiation.merchantOrderId),
    ),
  );
}
