import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/payment.dart';
import '../../../core/storage/secure_storage.dart';
import '../providers/fee_plan_provider.dart';
import '../providers/fees_provider.dart';
import '../services/payments_service.dart';

enum _Phase { checking, success, failed, stillPending, error }

/// The single place every payment — pay-all-dues, pay-one-installment, or a
/// resumed payment found on cold start — gets reconciled. Never trusts the
/// WebView redirect alone (see PaymentWebViewScreen's own comment): always
/// re-asks GET /parent/payments/status/:orderId, and keeps asking a few
/// times if PhonePe itself is still Pending, since the gateway's own status
/// can lag a few seconds behind the redirect firing.
class PaymentResultScreen extends ConsumerStatefulWidget {
  const PaymentResultScreen({super.key, required this.studentId, required this.merchantOrderId});

  final String studentId;
  final String merchantOrderId;

  @override
  ConsumerState<PaymentResultScreen> createState() => _PaymentResultScreenState();
}

class _PaymentResultScreenState extends ConsumerState<PaymentResultScreen> {
  static const _maxAutoAttempts = 8;
  static const _pollInterval = Duration(seconds: 4);

  _Phase _phase = _Phase.checking;
  Failure? _error;
  int _attempts = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _check();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Future<void> _check() async {
    _attempts++;
    final result = await PaymentsService().checkStatus(widget.merchantOrderId);
    if (!mounted) return;

    switch (result) {
      case Ok(:final value):
        _handleStatus(value);
      case Err(:final failure):
        setState(() {
          _phase = _Phase.error;
          _error = failure;
        });
    }
  }

  void _handleStatus(PaymentStatusResult value) {
    switch (value.status) {
      case PaymentStatus.success:
        SecureStorage.instance.clearPendingPayment();
        ref.invalidate(feeSummaryProvider(widget.studentId));
        ref.invalidate(feePlansProvider(widget.studentId));
        setState(() => _phase = _Phase.success);
      case PaymentStatus.failed:
        SecureStorage.instance.clearPendingPayment();
        setState(() => _phase = _Phase.failed);
      case PaymentStatus.pending:
      case PaymentStatus.unknown:
        if (_attempts >= _maxAutoAttempts) {
          setState(() => _phase = _Phase.stillPending);
        } else {
          _timer = Timer(_pollInterval, _check);
        }
    }
  }

  void _retryNow() {
    setState(() => _phase = _Phase.checking);
    _check();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Payment Status'), automaticallyImplyLeading: false),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: switch (_phase) {
            _Phase.checking => const _StatusView(
                icon: null,
                message: 'Confirming your payment…',
                showSpinner: true,
              ),
            _Phase.success => _StatusView(
                icon: Icons.check_circle,
                iconColor: const Color(0xFF16A34A),
                message: 'Payment successful.',
                actionLabel: 'Done',
                onAction: () => Navigator.of(context).pop(),
              ),
            _Phase.failed => _StatusView(
                icon: Icons.cancel,
                iconColor: const Color(0xFFDC2626),
                message: 'Payment failed. You have not been charged, or the amount will be refunded.',
                actionLabel: 'Done',
                onAction: () => Navigator.of(context).pop(),
              ),
            _Phase.stillPending => _StatusView(
                icon: Icons.hourglass_top,
                iconColor: const Color(0xFFD97706),
                message:
                    "We're still waiting for confirmation from the payment gateway. "
                    "This can take a few minutes — we'll keep checking the next time you open the app.",
                actionLabel: 'Check again',
                onAction: _retryNow,
                secondaryLabel: 'Done for now',
                onSecondary: () => Navigator.of(context).pop(),
              ),
            _Phase.error => _StatusView(
                icon: Icons.error_outline,
                iconColor: Theme.of(context).colorScheme.error,
                message: _error?.userMessage ?? 'Something went wrong while checking your payment.',
                actionLabel: 'Try again',
                onAction: _retryNow,
              ),
          },
        ),
      ),
    );
  }
}

class _StatusView extends StatelessWidget {
  const _StatusView({
    required this.icon,
    this.iconColor,
    required this.message,
    this.showSpinner = false,
    this.actionLabel,
    this.onAction,
    this.secondaryLabel,
    this.onSecondary,
  });

  final IconData? icon;
  final Color? iconColor;
  final String message;
  final bool showSpinner;
  final String? actionLabel;
  final VoidCallback? onAction;
  final String? secondaryLabel;
  final VoidCallback? onSecondary;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showSpinner) const CircularProgressIndicator() else if (icon != null) Icon(icon, size: 72, color: iconColor),
        const SizedBox(height: 24),
        Text(message, textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge),
        if (actionLabel != null) ...[
          const SizedBox(height: 24),
          FilledButton(onPressed: onAction, child: Text(actionLabel!)),
        ],
        if (secondaryLabel != null) ...[
          const SizedBox(height: 8),
          TextButton(onPressed: onSecondary, child: Text(secondaryLabel!)),
        ],
      ],
    );
  }
}
