# Qwik App

A cross-platform messaging app built with Flutter.

**Package:** `com.qwik.app`  
**Flutter version:** 3.22.0

---

## Getting Started

### Prerequisites

- Flutter SDK 3.22.0+
- Android Studio / VS Code
- Xcode (for iOS builds, macOS only)

### Run locally

```bash
# Install dependencies
flutter pub get

# Run on connected device / emulator
flutter run

# Run on specific platform
flutter run -d android
flutter run -d ios
```

### Build

```bash
# Android APK (debug)
flutter build apk --debug

# Android APK (release)
flutter build apk --release

# Android App Bundle (Play Store)
flutter build appbundle --release

# iOS (no signing)
flutter build ios --release --no-codesign
```

---

## CI/CD — GitHub Actions

The `.github/workflows/build.yml` workflow runs automatically on every push to `main`, `master`, or `develop`.

| Job | Runner | Output |
|-----|--------|--------|
| `build-android` | ubuntu-latest | Debug + Release APK |
| `build-aab` | ubuntu-latest | Release App Bundle (.aab) |
| `build-ios` | macos-latest | iOS build (no signing) |

Built artifacts are uploaded and kept for 14–30 days.  
Download them from **Actions → your workflow run → Artifacts**.

### iOS Distribution (App Store)

For signed iOS builds, add these secrets to your GitHub repository:

| Secret | Description |
|--------|-------------|
| `IOS_CERTIFICATE_BASE64` | P12 certificate (base64 encoded) |
| `IOS_CERTIFICATE_PASSWORD` | Certificate password |
| `IOS_PROVISION_PROFILE_BASE64` | Provisioning profile (base64 encoded) |
| `APPLE_TEAM_ID` | Your Apple Developer Team ID |

---

## Project Structure

```
lib/
├── main.dart                  # App entry point
├── screens/
│   └── home_screen.dart       # Home / messages screen
└── widgets/
    └── empty_state_illustration.dart  # Custom painter illustration
assets/
└── images/
    └── ic_launcher.png        # App icon
android/                       # Android native project
ios/                           # iOS native project
.github/
└── workflows/
    └── build.yml              # GitHub Actions CI/CD
```
