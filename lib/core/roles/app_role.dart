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

  /// Matches the role_name strings issued by the backend JWT — see
  /// edusoft_backend/src/routes/index.js and the ROLES constants on the
  /// web frontend (apps/school/src/shared/constants/roles.js).
  static AppRole? fromBackendName(String? name) {
    switch (name) {
      case 'parent':
        return AppRole.parent;
      case 'student':
        return AppRole.student;
      case 'teacher':
      case 'class_teacher':
        return AppRole.teacher;
      case 'driver':
        return AppRole.driver;
      default:
        // Not an error — e.g. school_admin, principal, accountant are real
        // backend roles with no mobile module yet. See RoleModule doc.
        return null;
    }
  }
}
