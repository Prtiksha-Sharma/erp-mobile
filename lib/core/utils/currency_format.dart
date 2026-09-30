import 'package:decimal/decimal.dart';
import 'package:intl/intl.dart';

/// Matches the web app's own formatting convention exactly — see
/// parent/payments.service.js: `₹${Number(receipt.net_amount).toLocaleString('en-IN')}`.
/// Same locale, same symbol, so amounts read identically across web and
/// mobile.
String formatCurrency(Decimal amount) {
  final formatter = NumberFormat.currency(locale: 'en_IN', symbol: '₹', decimalDigits: 0);
  return formatter.format(amount.toDouble());
}
