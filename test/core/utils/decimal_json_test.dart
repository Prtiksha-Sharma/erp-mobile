// Guards the exact inconsistency confirmed in the backend source: some
// money fields on GET /parent/children/:studentId/fees are direct Prisma
// Decimal passthroughs (JSON strings), others are computed via plain
// Number() arithmetic (raw JSON numbers) — see fee_summary.dart and
// decimal_json.dart's own comments for the specific backend lines.

import 'package:decimal/decimal.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:edusoft_mobile/core/utils/decimal_json.dart';

void main() {
  test('parses a Decimal-as-string field (receipt.total_amount style)', () {
    expect(decimalFromJson('5000'), Decimal.parse('5000'));
  });

  test('parses a Number()-computed field (pending_items.net_due style)', () {
    expect(decimalFromJson(5000), Decimal.parse('5000'));
  });

  test('parses a fractional Number()-computed field without precision loss', () {
    expect(decimalFromJson(1234.56), Decimal.parse('1234.56'));
  });

  test('parses zero in both representations identically', () {
    expect(decimalFromJson('0'), Decimal.zero);
    expect(decimalFromJson(0), Decimal.zero);
  });

  test('null resolves to zero rather than throwing', () {
    expect(decimalFromJson(null), Decimal.zero);
  });
}
