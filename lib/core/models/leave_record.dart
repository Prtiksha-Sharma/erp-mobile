import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'leave_record.freezed.dart';
part 'leave_record.g.dart';

/// Verified live + against apps/school's own leaves/constants/leaveStatus.js
/// (LEAVE_STATUS_VARIANT: PENDING=warning, APPROVED=success,
/// REJECTED=danger) — same colors reused here for consistency with the web
/// app's own convention, not just this app's existing palette.
enum LeaveStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('APPROVED')
  approved,
  @JsonValue('REJECTED')
  rejected,
  unknown,
}

extension LeaveStatusDisplay on LeaveStatus {
  String get label => switch (this) {
        LeaveStatus.pending => 'Pending',
        LeaveStatus.approved => 'Approved',
        LeaveStatus.rejected => 'Rejected',
        LeaveStatus.unknown => 'Unknown',
      };

  Color get color => switch (this) {
        LeaveStatus.pending => const Color(0xFFD97706), // --color-warning
        LeaveStatus.approved => const Color(0xFF16A34A), // --color-success
        LeaveStatus.rejected => const Color(0xFFDC2626), // --color-danger
        LeaveStatus.unknown => const Color(0xFF64748B),
      };
}

/// The four values apps/school's parent-portal/pages/ChildLeavesPage.jsx
/// itself offers — the exact same Parent-facing feature on web, the best
/// possible source (NOT the broader STAFF_LEAVE_TYPES list, which adds
/// 'Earned Leave' and is staff-only).
const leaveTypes = ['Sick Leave', 'Casual Leave', 'Emergency Leave', 'Other'];

int _totalDaysFromJson(String value) => int.tryParse(value) ?? 0;
String _totalDaysToJson(int value) => value.toString();

/// Matches GET /parent/children/:studentId/leaves — verified live.
/// total_days arrives as a STRING ("7", not 7) — a real gotcha caught by
/// live verification, not something the schema/source code alone made
/// obvious. Parsed via a custom JsonKey converter rather than typed as
/// String, since every actual use of it is arithmetic/display as a count.
@freezed
abstract class LeaveRecord with _$LeaveRecord {
  const factory LeaveRecord({
    @JsonKey(name: 'leave_id') required String leaveId,
    @JsonKey(name: 'leave_type') required String leaveType,
    @JsonKey(name: 'from_date') required DateTime fromDate,
    @JsonKey(name: 'to_date') required DateTime toDate,
    @JsonKey(name: 'total_days', fromJson: _totalDaysFromJson, toJson: _totalDaysToJson)
    required int totalDays,
    String? reason,
    @JsonKey(name: 'attachment_url') String? attachmentUrl,
    @JsonKey(name: 'status', unknownEnumValue: LeaveStatus.unknown) required LeaveStatus status,
    String? remarks,
  }) = _LeaveRecord;

  factory LeaveRecord.fromJson(Map<String, dynamic> json) => _$LeaveRecordFromJson(json);
}
