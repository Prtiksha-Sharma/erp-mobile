# Deploying EduSoft Mobile

Flutter client (`edusoft_mobile`, displayed as **Vidyaprabandhan**). "Deploy"
here means **building a signed release and publishing it to Google Play and
the App Store** — unlike the backend, there is no server to push to.

The backend it talks to is already live: `config/prod.json` points at
`https://edusoft-erp.web.app/api`, which is the Cloud Function deployed per
`../edusoft_backend/DEPLOYMENT.md`. Nothing in this guide redeploys that.

---

## 0. Blockers — fix these before a public release

Verified against the current `develop` checkout. The first one *will* get
your upload rejected by Google Play.

| # | Problem | Where |
|---|---------|-------|
| 1 | **Release builds are signed with the debug keystore.** Play rejects debug-signed uploads outright. | `android/app/build.gradle.kts:36-41` |
| 2 | **App icon is still the default Flutter logo.** | `android/app/src/main/res/mipmap-*/ic_launcher.png` |
| 3 | **`cmdline-tools` not installed** → `flutter build appbundle` exits 1 (the `.aab` is still produced and valid; only Flutter's post-build symbol check fails). | local machine |
| 4 | **`INTERNET` permission is only declared in the debug manifest.** Release builds get it transitively from `firebase_messaging`'s manifest merge — it works today, but it breaks silently the moment that dependency is dropped. | `android/app/src/main/AndroidManifest.xml` |
| 5 | **iOS has no `CFBundleURLTypes`** → the `edusoft://payment/result` PhonePe redirect never returns to the app on iOS. Works on Android. | `ios/Runner/Info.plist` |
| 6 | Backend still has dev JWT secrets (`ERPJWT` / `ERPRefreshJWT`) and **PhonePe is in sandbox mode**. | `../edusoft_backend/DEPLOYMENT.md` §Environment |

Fixes for 1–5 are in the sections below. #6 is a backend task — do not put the
app in front of real users until it's done, or logins are forgeable and no
real payment will settle.

### Not a blocker: Firebase

`firebase_core`, `firebase_messaging` and `flutter_local_notifications` are in
`pubspec.yaml` but **no code in `lib/` ever calls them** — there is no
`Firebase.initializeApp()` anywhere. So:

- You do **not** need `google-services.json` or `GoogleService-Info.plist` to ship.
- There are also **no push notifications in the app**. If the rollout plan
  assumes push works, it does not — that feature still has to be built.

---

## 1. Prerequisites

- **Flutter stable** — currently verified on 3.47.5 / Dart 3.13.4.
- **Android Studio** with the Android SDK (platform 36, build-tools 36.0.0,
  NDK 28.2.13676358 are already installed here).
- **Android SDK Command-line Tools** — missing; see §2.
- A **Google Play Console** account (one-time USD 25) for Android.
- For iOS only: a **Mac with Xcode** and an **Apple Developer Program**
  membership (USD 99/yr). iOS cannot be built on Windows at all.

Build config resolves to `minSdk 24`, `targetSdk 36`, `compileSdk 36` — that
satisfies Play's current target-API requirement, nothing to change.

---

## 2. Install the missing command-line tools (one-time)

Without this, every release build ends in:

```
Failed to find cmdline-tools when checking final appbundle for debug symbols.
Release app bundle failed to strip debug symbols from native libraries.
[exited with code 1]
```

Android Studio → **Settings → Languages & Frameworks → Android SDK → SDK Tools**
tab → tick **Android SDK Command-line Tools (latest)** → **Apply**.

Then accept the licences and confirm a clean doctor:

```powershell
flutter doctor --android-licenses
flutter doctor
```

The Android toolchain line should come back `[√]`.

---

## 3. Create the upload keystore (one-time, irreplaceable)

> **Back this file up.** If you lose the keystore you can never publish an
> update to the same Play listing again — you'd have to ship a new app under a
> new package name. Keep it out of git and store a copy somewhere safe.

`java` isn't on PATH on this machine; use the JDK bundled with Android Studio:

```powershell
& "C:\Program Files\Android\Android Studio\jbr\bin\keytool.exe" `
  -genkey -v `
  -keystore "$env:USERPROFILE\edusoft-upload-keystore.jks" `
  -storetype JKS `
  -keyalg RSA -keysize 2048 -validity 10000 `
  -alias upload
```

It prompts for a password and for name/organisation details. Use a real
password and record it in your password manager.

Then create `android/key.properties`. This is already gitignored — verified:
`android/.gitignore:12` covers `key.properties`, and the root `.gitignore`
lines 52–54 cover `*.jks`, `*.keystore` and `android/key.properties`.

```properties
storePassword=<the password you just chose>
keyPassword=<same, unless you set a separate key password>
keyAlias=upload
storeFile=C:/Users/<you>/edusoft-upload-keystore.jks
```

Use forward slashes in `storeFile`, even on Windows.

---

## 4. Wire the keystore into the Gradle build (one-time)

Edit [android/app/build.gradle.kts](android/app/build.gradle.kts). Add this
**above** the `android { }` block:

```kotlin
import java.util.Properties
import java.io.FileInputStream

val keystoreProperties = Properties()
val keystorePropertiesFile = rootProject.file("key.properties")
if (keystorePropertiesFile.exists()) {
    FileInputStream(keystorePropertiesFile).use { keystoreProperties.load(it) }
}
```

Inside `android { }`, add a `signingConfigs` block and replace the existing
debug-signing `buildTypes` block (currently lines 35–41):

```kotlin
    signingConfigs {
        create("release") {
            keyAlias = keystoreProperties["keyAlias"] as String
            keyPassword = keystoreProperties["keyPassword"] as String
            storeFile = keystoreProperties["storeFile"]?.let { file(it) }
            storePassword = keystoreProperties["storePassword"] as String
        }
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("release")
            isMinifyEnabled = true
            isShrinkResources = true
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro",
            )
        }
    }
```

If you enable `isMinifyEnabled`, create `android/app/proguard-rules.pro` (an
empty file is fine to start) and **smoke-test the release build on a real
device** — R8 stripping can break reflection-based code paths that debug
builds never exercise. If you'd rather not take that on for the first
release, leave both `isMinifyEnabled` and `isShrinkResources` out; only the
`signingConfig` line is mandatory.

---

## 5. Replace the launcher icon

Supply a 1024×1024 PNG and generate the density buckets — easiest via
`flutter_launcher_icons`:

```powershell
flutter pub add --dev flutter_launcher_icons
```

Add to `pubspec.yaml`:

```yaml
flutter_launcher_icons:
  android: true
  ios: true
  image_path: "assets/icon/app_icon.png"
  adaptive_icon_background: "#673AB7"
  adaptive_icon_foreground: "assets/icon/app_icon_foreground.png"
```

```powershell
dart run flutter_launcher_icons
```

Play also wants a **separate 512×512 PNG** for the store listing — that's
uploaded in the Console, not bundled in the app.

---

## 6. Declare the INTERNET permission explicitly

In [android/app/src/main/AndroidManifest.xml](android/app/src/main/AndroidManifest.xml),
add above `<application>`:

```xml
    <uses-permission android:name="android.permission.INTERNET"/>
```

---

## 7. Set the version for the release

In [pubspec.yaml](pubspec.yaml) — currently `version: 1.0.0+1`.

- The part before `+` is the **version name** users see (`1.0.0`).
- The part after `+` is the **version code** (`1`). Play **rejects any upload
  whose version code is not higher than the last one**. Bump it on every
  single upload, including re-uploads of a rejected build.

---

## 8. Build the Android release

```powershell
cd D:\Edusoft\erp_app
flutter clean
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter build appbundle --release --dart-define-from-file=config/prod.json
```

`--dart-define-from-file=config/prod.json` is **not optional**. `dio_client.dart`
falls back to `http://localhost:5000/api` when the flag is forgotten, so a
build without it ships an app that can't reach anything.

Output: `build/app/outputs/bundle/release/app-release.aab`

A verified build of the current source produces a ~61 MB `.aab`. That is
normal — it packs all three ABIs, and Play splits it per device (actual
download is far smaller).

### For sideloading / manual QA, build an APK instead

```powershell
flutter build apk --release --split-per-abi --dart-define-from-file=config/prod.json
```

Output: `build/app/outputs/flutter-apk/app-arm64-v8a-release.apk` (plus other
ABIs). Use APKs for hand-testing only — Play requires the `.aab`.

### Confirm it's really signed with your upload key

```powershell
& "C:\Program Files\Android\Android Studio\jbr\bin\keytool.exe" `
  -printcert -jarfile build\app\outputs\bundle\release\app-release.aab
```

The owner should be what you entered in §3 — **not** `CN=Android Debug`.

---

## 9. Publish to Google Play

**First release:**

1. [Play Console](https://play.google.com/console) → **Create app**. Name,
   default language, *App*, Free/Paid.
2. Package name is fixed at **`com.edusoft.edusoft_mobile`** by
   `android/app/build.gradle.kts:22`. It can never be changed after the first
   upload — change it now if you want something different.
3. Work through **Dashboard → Set up your app**, all of which Google requires
   before any public release:
   - **Privacy policy URL** (must be a live, publicly reachable page)
   - **Data safety** — declare what you collect. This app sends login
     credentials, student/fee data and uploads files to Cloudinary; answer
     accordingly.
   - **Content rating** questionnaire
   - **Target audience** — if you declare under-13 users, Play's Families
     policy applies and the review is stricter.
   - **App access** — the whole app is behind a login, so you **must** supply
     working demo credentials for each role (Parent, Student, Teacher, Driver)
     or the reviewer will reject it as non-functional.
   - Store listing: description, 512×512 icon, 1024×500 feature graphic, and
     at least 2 phone screenshots.
4. **Testing → Internal testing → Create new release**. Start here, not
   Production — internal testing goes live in minutes and is the only sane way
   to verify the prod backend wiring end to end.
5. Upload the `.aab`. Accept **Play App Signing** when prompted (Google holds
   the real signing key; your keystore from §3 becomes the *upload* key).
6. Add testers by email, save, review, **roll out**.
7. Once internal testing passes, promote the same release to **Production**.
   First production review typically takes a few days.

**Every subsequent release:** bump the version code (§7), rebuild (§8), create
a new release, upload, roll out.

---

## 10. iOS

**This cannot be done from Windows.** You need physical or cloud macOS
(Codemagic / Bitrise / GitHub Actions `macos-latest` all work).

The iOS side has never been built — there's no `Podfile` yet; it's generated
on the first macOS build.

**Fix the deep link first.** Add to `ios/Runner/Info.plist`, inside the top-level
`<dict>`:

```xml
	<key>CFBundleURLTypes</key>
	<array>
		<dict>
			<key>CFBundleURLName</key>
			<string>com.edusoft.edusoftMobile</string>
			<key>CFBundleURLSchemes</key>
			<array>
				<string>edusoft</string>
			</array>
		</dict>
	</array>
```

Without it, a parent who pays a fee on iOS gets stranded in the PhonePe
browser and never returns to the app.

Also note the bundle identifier is **`com.edusoft.edusoftMobile`**, which does
*not* match Android's `com.edusoft.edusoft_mobile`. That's legal (iOS bundle
IDs can't contain underscores) but register the App Store app under the iOS
one.

Then, on the Mac:

```bash
cd erp_app
flutter pub get
cd ios && pod install && cd ..
open ios/Runner.xcworkspace
```

In Xcode → **Runner → Signing & Capabilities**: select your Team, confirm the
bundle identifier, let Xcode manage signing.

In **App Store Connect**, create the app record with that bundle ID, then:

```bash
flutter build ipa --release --dart-define-from-file=config/prod.json
```

Output: `build/ios/ipa/*.ipa`. Upload with **Transporter** (Mac App Store) or
`xcrun altool`. Then in App Store Connect: fill the listing, screenshots for
every required device size, privacy nutrition labels, demo credentials for
each role, and submit for review (typically 1–3 days).

---

## 11. Pre-submission checklist

- [ ] `cmdline-tools` installed, `flutter doctor` clean (§2)
- [ ] Upload keystore created and **backed up** (§3)
- [ ] `key.properties` created (gitignore already covers it)
- [ ] Release signing wired into Gradle; `keytool -printcert` shows your key, not debug (§4, §8)
- [ ] Launcher icon replaced (§5)
- [ ] `INTERNET` declared explicitly (§6)
- [ ] Version code bumped (§7)
- [ ] Built with `--dart-define-from-file=config/prod.json` (§8)
- [ ] Installed the release build on a real device and logged in against the **prod** backend
- [ ] Fee payment tested end to end, including the `edusoft://` return trip
- [ ] Backend JWT secrets rotated off `ERPJWT` / `ERPRefreshJWT`
- [ ] PhonePe switched from sandbox to production credentials, webhook URL re-registered
- [ ] Privacy policy published at a live URL
- [ ] Demo credentials prepared for Parent, Student, Teacher and Driver
