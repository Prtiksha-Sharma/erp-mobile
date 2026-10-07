import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_campus_reception.freezed.dart';
part 'admin_campus_reception.g.dart';

/// One row of GET /admin/reception/summary — admin/reception/
/// activity.service.js#getReceptionistsSummary (one per staff member
/// holding the Receptionist role; counts are real `count()`s).
@freezed
abstract class ReceptionistSummary with _$ReceptionistSummary {
  const factory ReceptionistSummary({
    @JsonKey(name: 'staff_id') required String staffId,
    @JsonKey(name: 'employee_code') String? employeeCode,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'account_status') String? accountStatus,
    @JsonKey(name: 'last_login') DateTime? lastLogin,
    @JsonKey(name: 'inquiries_handled') @Default(0) int inquiriesHandled,
    @JsonKey(name: 'follow_ups_count') @Default(0) int followUpsCount,
    @JsonKey(name: 'converted_count') @Default(0) int convertedCount,
  }) = _ReceptionistSummary;

  factory ReceptionistSummary.fromJson(Map<String, dynamic> json) => _$ReceptionistSummaryFromJson(json);
}

/// GET /admin/reception/:staffId/activity — activity.service.js
/// #getReceptionistActivity: the summary fields plus a merged, newest-first
/// `recent_actions` feed (capped by `?limit=`, default 20, max 50).
@freezed
abstract class ReceptionistActivity with _$ReceptionistActivity {
  const factory ReceptionistActivity({
    @JsonKey(name: 'staff_id') required String staffId,
    @JsonKey(name: 'employee_code') String? employeeCode,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'account_status') String? accountStatus,
    @JsonKey(name: 'last_login') DateTime? lastLogin,
    @JsonKey(name: 'inquiries_handled') @Default(0) int inquiriesHandled,
    @JsonKey(name: 'follow_ups_count') @Default(0) int followUpsCount,
    @JsonKey(name: 'converted_count') @Default(0) int convertedCount,
    @JsonKey(name: 'recent_actions') @Default(<ReceptionActionItem>[]) List<ReceptionActionItem> recentActions,
  }) = _ReceptionistActivity;

  factory ReceptionistActivity.fromJson(Map<String, dynamic> json) => _$ReceptionistActivityFromJson(json);
}

/// A feed entry. INQUIRY_CREATED carries `status`/`source`; the two
/// *_LOGGED types carry `status_after` (nullable). Both statuses are free
/// text on the backend, and `activity_type` stays a String.
@freezed
abstract class ReceptionActionItem with _$ReceptionActionItem {
  const factory ReceptionActionItem({
    @JsonKey(name: 'activity_type') required String activityType,
    DateTime? timestamp,
    ReceptionInquiryRef? inquiry,
    String? status,
    String? source,
    @JsonKey(name: 'status_after') String? statusAfter,
  }) = _ReceptionActionItem;

  factory ReceptionActionItem.fromJson(Map<String, dynamic> json) => _$ReceptionActionItemFromJson(json);
}

/// `{ inquiry_id, student_name }`.
@freezed
abstract class ReceptionInquiryRef with _$ReceptionInquiryRef {
  const factory ReceptionInquiryRef({
    @JsonKey(name: 'inquiry_id') String? inquiryId,
    @JsonKey(name: 'student_name') String? studentName,
  }) = _ReceptionInquiryRef;

  factory ReceptionInquiryRef.fromJson(Map<String, dynamic> json) => _$ReceptionInquiryRefFromJson(json);
}
