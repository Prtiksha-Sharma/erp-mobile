import 'package:decimal/decimal.dart';
import 'package:decimal/intl.dart';
import 'package:intl/intl.dart';

/// Display formatters matching the web app's shared/utils/formatDate.js
/// (`en-IN`, `dd MMM yyyy`) and the student portal's `formatAmount`
/// (`₹1,23,456.00`), so the same record reads identically on web and
/// mobile.

final _dateFormat = DateFormat('dd MMM yyyy');
final _dateTimeFormat = DateFormat('dd MMM yyyy, hh:mm a');
final _moneyFormat = DecimalFormatter(
  NumberFormat.currency(locale: 'en_IN', symbol: '₹', decimalDigits: 2),
);

/// `@db.Date` columns arrive as UTC midnight (`2026-09-20T00:00:00.000Z`) —
/// formatting those in UTC keeps the calendar day the backend stored.
/// Any other instant (a real timestamp, e.g. `uploaded_at`) is shown in the
/// device's local time, like the browser does on web.
DateTime _displayInstant(DateTime d) {
  final isDateOnly = d.isUtc && d.hour == 0 && d.minute == 0 && d.second == 0 && d.millisecond == 0;
  return isDateOnly ? d : d.toLocal();
}

String formatDate(DateTime? value) => value == null ? '—' : _dateFormat.format(_displayInstant(value));

String formatDateTime(DateTime? value) => value == null ? '—' : _dateTimeFormat.format(value.toLocal());

String formatAmount(Decimal? value) => _moneyFormat.format(value ?? Decimal.zero);

/// `@db.Time` columns are serialized as an ISO datetime pinned to
/// 1970-01-01 in UTC — only the UTC hour/minute are real (web reads
/// `getUTCHours()` for the same reason). Returns `9:05 AM` style text.
String formatClockTime(DateTime? value) {
  if (value == null) return '—';
  final utc = value.toUtc();
  final hour12 = utc.hour % 12 == 0 ? 12 : utc.hour % 12;
  final minutes = utc.minute.toString().padLeft(2, '0');
  return '$hour12:$minutes ${utc.hour >= 12 ? 'PM' : 'AM'}';
}

/// `9:00 - 9:45 AM` when both ends share AM/PM, else `11:30 AM - 12:15 PM`
/// — same rule as the web timetable's formatTimeRange.
String formatClockRange(DateTime? start, DateTime? end) {
  if (start == null || end == null) return 'Time TBA';
  final s = formatClockTime(start);
  final e = formatClockTime(end);
  final sPeriod = s.substring(s.length - 2);
  final ePeriod = e.substring(e.length - 2);
  return sPeriod == ePeriod ? '${s.substring(0, s.length - 3)} - $e' : '$s - $e';
}

/// `HALF_YEARLY` -> `Half Yearly`, `PARTIALLY_PAID` -> `Partially Paid`.
/// Lets a new backend enum value render sensibly with no app update.
String humanizeEnum(String? value) {
  if (value == null || value.isEmpty) return '—';
  return value
      .split('_')
      .where((w) => w.isNotEmpty)
      .map((w) => w[0].toUpperCase() + w.substring(1).toLowerCase())
      .join(' ');
}

String initialsOf(String? name, {int max = 2}) {
  if (name == null || name.trim().isEmpty) return '?';
  return name.trim().split(RegExp(r'\s+')).take(max).map((w) => w[0]).join().toUpperCase();
}
