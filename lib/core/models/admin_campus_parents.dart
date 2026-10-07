import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_campus_parents.freezed.dart';
part 'admin_campus_parents.g.dart';

/// One parent login — GET /admin/parents (list rows) and
/// GET /admin/parents/:parentAccountId (detail) share the same shape:
/// admin/parents/parents.service.js#serializeParentAccount (USER_SELECT +
/// the `parents` bio row + CHILD_SELECT). `name`/`relation_type`/contact
/// come from the bio row with the login's own values as fallback;
/// `photo_url` is null until the pending photo migration lands.
///
/// The bio's other fields (first_name, occupation, aadhaar_no, …) are NOT
/// serialized, so Edit Parent can only pre-fill relation, mobile and email
/// (the web reads `parent.first_name` etc. and gets undefined too).
@freezed
abstract class ParentAccount with _$ParentAccount {
  const factory ParentAccount({
    @JsonKey(name: 'parent_account_id') required String parentAccountId,
    @JsonKey(name: 'user_id') String? userId,
    String? username,
    @JsonKey(name: 'account_status') String? accountStatus,
    @JsonKey(name: 'locked_until') DateTime? lockedUntil,
    @JsonKey(name: 'failed_login_attempts') int? failedLoginAttempts,
    @JsonKey(name: 'last_active_at') DateTime? lastActiveAt,
    String? name,
    @JsonKey(name: 'relation_type') String? relationType,
    @JsonKey(name: 'mobile_no') String? mobileNo,
    String? email,
    @JsonKey(name: 'photo_url') String? photoUrl,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @Default(<ParentLinkedChild>[]) List<ParentLinkedChild> children,
    @JsonKey(name: 'children_count') @Default(0) int childrenCount,
  }) = _ParentAccount;

  factory ParentAccount.fromJson(Map<String, dynamic> json) => _$ParentAccountFromJson(json);
}

/// A `parent_children` link, flattened by serializeParentAccount.
@freezed
abstract class ParentLinkedChild with _$ParentLinkedChild {
  const factory ParentLinkedChild({
    @JsonKey(name: 'parent_child_id') required String parentChildId,
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'relation_type') String? relationType,
    @JsonKey(name: 'admission_no') String? admissionNo,
    @JsonKey(name: 'student_status') String? studentStatus,
    @JsonKey(name: 'student_name') String? studentName,
    @JsonKey(name: 'class_name') String? className,
    @JsonKey(name: 'section_name') String? sectionName,
  }) = _ParentLinkedChild;

  factory ParentLinkedChild.fromJson(Map<String, dynamic> json) => _$ParentLinkedChildFromJson(json);
}

/// GET /admin/parents → `{ total, page, limit, data }` (listParents).
@freezed
abstract class ParentAccountPage with _$ParentAccountPage {
  const factory ParentAccountPage({
    @Default(0) int total,
    @Default(1) int page,
    @Default(20) int limit,
    @Default(<ParentAccount>[]) List<ParentAccount> data,
  }) = _ParentAccountPage;

  factory ParentAccountPage.fromJson(Map<String, dynamic> json) => _$ParentAccountPageFromJson(json);
}

/// POST /admin/students/:studentId/parents/:parentId/account —
/// admin/student/accounts.service.js#createParentLogin. `password` is null
/// and `linked_existing` true when this parent (matched by mobile/email)
/// already had a login, which the child was linked to instead.
@freezed
abstract class ParentLoginResult with _$ParentLoginResult {
  const factory ParentLoginResult({
    @JsonKey(name: 'user_id') String? userId,
    String? username,
    String? password,
    @JsonKey(name: 'linked_existing') @Default(false) bool linkedExisting,
  }) = _ParentLoginResult;

  factory ParentLoginResult.fromJson(Map<String, dynamic> json) => _$ParentLoginResultFromJson(json);
}
