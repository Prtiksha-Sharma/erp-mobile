# EduSoft Mobile

Flutter client for the EduSoft school ERP.

Roles in scope: Parent, Student, Teacher, Driver.
Feature-first structure — see `lib/features/<role>/` once scaffolded.

## Setup
1. Install Flutter (stable) — https://docs.flutter.dev/get-started/install/windows
2. `flutter pub get`
3. `dart run build_runner build --delete-conflicting-outputs`
4. `flutter run --dart-define-from-file=config/dev.json`

## Release build (Play Store)
Package name: `com.vidyaprabandhan.app` (permanent — never change it).

1. One-time: create the upload keystore and keep it backed up outside the repo:
   `keytool -genkey -v -keystore D:\keys\vidyaprabandhan-upload.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload`
2. One-time: create `android/key.properties` (git-ignored):
   ```properties
   storePassword=...
   keyPassword=...
   keyAlias=upload
   storeFile=D:/keys/vidyaprabandhan-upload.jks
   ```
   Without this file, release builds fall back to the debug key and Play Console rejects them.
3. Bump `version:` in `pubspec.yaml` — the number after `+` must increase on every upload.
4. `flutter build appbundle --release --dart-define-from-file=config/prod.json`
   → `build/app/outputs/bundle/release/app-release.aab`

## Conventions
- One feature folder per role under `lib/features/` — `screens/`, `providers/`, `services/`
- Never branch on role inside shared widgets (`app/shell`, `ui/`) — register a `RoleModule` instead
- Money is `Decimal`, never `double` (backend sends Prisma `Decimal` fields as strings)
- Run `build_runner` after touching any `@freezed` / `@riverpod` annotated file
