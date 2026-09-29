# EduSoft Mobile

Flutter client for the EduSoft school ERP.

Roles in scope: Parent, Student, Teacher, Driver.
Feature-first structure — see `lib/features/<role>/` once scaffolded.

## Setup
1. Install Flutter (stable) — https://docs.flutter.dev/get-started/install/windows
2. `flutter pub get`
3. `dart run build_runner build --delete-conflicting-outputs`
4. `flutter run --dart-define-from-file=config/dev.json`

## Conventions
- One feature folder per role under `lib/features/` — `screens/`, `providers/`, `services/`
- Never branch on role inside shared widgets (`app/shell`, `ui/`) — register a `RoleModule` instead
- Money is `Decimal`, never `double` (backend sends Prisma `Decimal` fields as strings)
- Run `build_runner` after touching any `@freezed` / `@riverpod` annotated file
