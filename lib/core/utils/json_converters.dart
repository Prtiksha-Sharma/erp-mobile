import 'package:decimal/decimal.dart';
import 'package:json_annotation/json_annotation.dart';

/// Prisma serializes `Decimal` columns as JSON strings (`"1500.00"`), but
/// service-computed totals (sums, balances) come back as plain JSON numbers
/// — this accepts both, so a model field never cares which path produced
/// it. Money is always Decimal in this app, never double (see README).
class DecimalConverter implements JsonConverter<Decimal, Object?> {
  const DecimalConverter();

  @override
  Decimal fromJson(Object? json) => parseDecimal(json) ?? Decimal.zero;

  @override
  Object? toJson(Decimal value) => value.toString();
}

/// Nullable twin of [DecimalConverter] — for fields where "absent" is a
/// real state distinct from zero (e.g. a percentage not computed yet).
class NullableDecimalConverter implements JsonConverter<Decimal?, Object?> {
  const NullableDecimalConverter();

  @override
  Decimal? fromJson(Object? json) => parseDecimal(json);

  @override
  Object? toJson(Decimal? value) => value?.toString();
}

Decimal? parseDecimal(Object? json) {
  if (json == null) return null;
  if (json is int) return Decimal.fromInt(json);
  if (json is num) return Decimal.parse(json.toString());
  if (json is String) return Decimal.tryParse(json.trim());
  return null;
}

/// Some count/number columns (e.g. `total_days`, `max_marks`) are Prisma
/// Decimal or computed server-side and may arrive as a number OR a numeric
/// string — this reads either as a plain `num` for display-only use.
class LooseNumConverter implements JsonConverter<num?, Object?> {
  const LooseNumConverter();

  @override
  num? fromJson(Object? json) {
    if (json == null) return null;
    if (json is num) return json;
    if (json is String) return num.tryParse(json.trim());
    return null;
  }

  @override
  Object? toJson(num? value) => value;
}

/// Tolerates either a String or a number on the wire for a field the UI
/// only ever displays as text (e.g. roll_no, pincode, percentage).
class LooseStringConverter implements JsonConverter<String?, Object?> {
  const LooseStringConverter();

  @override
  String? fromJson(Object? json) => json?.toString();

  @override
  Object? toJson(String? value) => value;
}
