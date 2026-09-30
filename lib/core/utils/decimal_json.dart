import 'package:decimal/decimal.dart';

/// Money fields on GET /parent/children/:studentId/fees are genuinely
/// inconsistently typed — confirmed by reading both backend code paths,
/// not assumed:
///   - Fields that are direct Prisma Decimal column passthroughs
///     (receipt.total_amount, receipt_item.net_amount, ...) serialize as
///     a JSON STRING ("5000").
///   - Fields computed via plain JS `Number(...)` arithmetic on the
///     backend (pending_items.net_due, total_due, suggested_fine_amount,
///     ...) serialize as a raw JSON NUMBER (0, 5000.5).
/// Rather than track which representation each individual field happens
/// to use, every money field in this app's fee models parses through
/// this one function, which accepts either.
Decimal decimalFromJson(dynamic value) {
  if (value == null) return Decimal.zero;
  if (value is String) return Decimal.parse(value);
  if (value is num) return Decimal.parse(value.toString());
  throw FormatException('Cannot parse as Decimal: $value');
}

String decimalToJson(Decimal value) => value.toString();
