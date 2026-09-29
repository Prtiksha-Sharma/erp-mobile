/// The set of app roles this Flutter client currently supports.
///
/// This enum is the whole extensibility mechanism, together with
/// `RoleModule` and `roleRegistry` (see role_module.dart / role_registry.dart).
/// Adding a role later (e.g. Librarian, Accountant) means:
///   1. Add a value here.
///   2. Create `lib/features/<role>/` with its own screens/providers/services.
///   3. Implement RoleModule for it and register it in role_registry.dart.
/// No changes to routing, the app shell, or any other role's code are needed.
enum AppRole {
  parent,
  student,
  teacher,
  driver;

  /// Matches the RAW role_name strings the backend JWT actually carries —
  /// Title Case, verified directly against auth.service.js#getUserRoles
  /// (a plain, untransformed `roles.role_name` column read) and every
  /// `authorize('Parent')` / `role_name: { in: ['Teacher', 'Class Teacher'] }`
  /// call site in the backend. This is NOT the same as the web frontend's
  /// own normalized lowercase-snake_case ROLES constant
  /// (apps/school/src/shared/constants/roles.js) — that's a frontend-only
  /// value produced by authMappers.js#normalizeRoleName, not what's on the
  /// wire. Learned the hard way: an earlier version of this method matched
  /// against the frontend's normalized strings and every login failed with
  /// "this account's role isn't supported on mobile yet" even for a
  /// perfectly valid Parent account.
  static AppRole? fromBackendName(String? name) {
    switch (name) {
      case 'Parent':
        return AppRole.parent;
      case 'Student':
        return AppRole.student;
      case 'Teacher':
      case 'Class Teacher':
        return AppRole.teacher;
      case 'Driver':
        return AppRole.driver;
      default:
        // Not an error — e.g. School Admin, Principal, Accountant are real
        // backend roles with no mobile module yet. See RoleModule doc.
        return null;
    }
  }
}
