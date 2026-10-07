import '../../features/driver/driver_module.dart';
import '../../features/librarian/librarian_module.dart';
import '../../features/parent/parent_module.dart';
import '../../features/principal/principal_module.dart';
import '../../features/school_admin/school_admin_module.dart';
import '../../features/student/student_module.dart';
import '../../features/teacher/teacher_module.dart';
import '../../features/vice_principal/vice_principal_module.dart';
import 'app_role.dart';
import 'role_module.dart';

/// The single place every role gets registered. The router
/// (app_router.dart) and the app shell (app_shell.dart) both read ONLY
/// from this map; neither one branches on AppRole directly. That's what
/// makes adding role #5 later (e.g. Librarian) a one-line addition here
/// instead of a refactor.
final Map<AppRole, RoleModule> roleRegistry = <AppRole, RoleModule>{
  AppRole.parent: ParentModule(),
  AppRole.student: StudentModule(),
  AppRole.teacher: TeacherModule(),
  AppRole.driver: DriverModule(),
  AppRole.principal: PrincipalModule(),
  AppRole.vicePrincipal: VicePrincipalModule(),
  AppRole.schoolAdmin: SchoolAdminModule(),
  AppRole.librarian: LibrarianModule(),
};
