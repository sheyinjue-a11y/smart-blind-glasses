# Project Guidelines

## Code Style
- Follow the existing Flutter/Dart style in [lib/](lib). Use `async`/`await` for non-blocking work, `ChangeNotifier` for service-level state, and keep UI/state orchestration in Dart rather than pushing it into widgets.
- Treat Freezed and JSON serialization as generated code. Edit [lib/models/navigation_state.dart](lib/models/navigation_state.dart) and regenerate the `.freezed.dart` and `.g.dart` outputs instead of hand-editing generated files.
- Keep Kotlin code in [android/app/src/main/kotlin/com/example/esp_assistant_v2/](android/app/src/main/kotlin/com/example/esp_assistant_v2) coroutine-based and main-thread safe. Do not add blocking work to the UI thread.

## Architecture
- The mobile app is split between Flutter UI/state in [lib/](lib) and native Android processing in [android/app/src/main/kotlin/com/example/esp_assistant_v2/](android/app/src/main/kotlin/com/example/esp_assistant_v2). The native bridge and build wiring are high-risk areas.
- Treat [android/app/src/main/kotlin/com/example/esp_assistant_v2/MainActivity.kt](android/app/src/main/kotlin/com/example/esp_assistant_v2/MainActivity.kt) and [android/app/build.gradle.kts](android/app/build.gradle.kts) as stable unless the task explicitly requires bridge or dependency changes.
- The current work mirrors the legacy Python workflows from [legacy_python_ref/core_files/PROJECT_STRUCTURE.md](legacy_python_ref/core_files/PROJECT_STRUCTURE.md) and [legacy_python_ref/core_files/README.md](legacy_python_ref/core_files/README.md). Link to those docs instead of duplicating their contents.

## Build and Test
- Run `flutter pub get` after dependency changes.
- Run `flutter pub run build_runner build --delete-conflicting-outputs` after editing Freezed or JSON-serializable models.
- Use `flutter analyze` and `flutter test` for Dart validation.
- Use `flutter run` or Android Studio to launch the app on a device.
- After editing Android Gradle files, sync the project in Android Studio so Kotlin and ONNX dependencies resolve correctly.

## Conventions
- Preserve the existing camera -> native inference -> EventChannel -> Flutter UI pipeline. Keep channel names, payload keys, and state names aligned across Dart and Kotlin.
- Mirror the Python workflow state names in the Dart/Kotlin state machine layer so the legacy docs remain a reliable reference.
- Prefer small, focused edits in `lib/` and the native workflow classes over broad rewrites.
- Avoid modifying `legacy_python_ref/` unless the task is specifically about documentation or reference material.

## Reference Docs
- [README.md](README.md) covers the current app setup and user-facing workflow.
- [legacy_python_ref/core_files/PROJECT_STRUCTURE.md](legacy_python_ref/core_files/PROJECT_STRUCTURE.md) describes the original Python architecture and workflow mapping.
- [legacy_python_ref/core_files/README.md](legacy_python_ref/core_files/README.md) contains the legacy system overview and setup notes.