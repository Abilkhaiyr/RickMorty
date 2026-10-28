# Project conventions

- Use `C:/Users/Administrator/Desktop/myProjects/breeze_app` as the architecture and dependency template. Preserve that source project unchanged.
- Keep the feature-first `lib/src/core` and `lib/src/feature` structure, Cubit/Bloc, composition-root injection with scopes, Dio REST abstraction, and AutoRoute navigation.
- Use plural `models` directories everywhere. Do not create singular `model` directories.
- Follow Breeze's repository organization: keep each repository interface and its implementation together in one file under `data`. Do not introduce a separate `domain` directory.
- Use Freezed for data models, DTOs, and state models. Generate DTO JSON serialization with json_serializable. Dependency containers hold services and lifecycle methods and are ordinary classes.
- Keep `pubspec.yaml` aligned with the Breeze template, adapting the package name and any explicitly requested project-specific configuration. Keep declared asset directories present; do not copy unrelated source assets.
- Regenerate after changing Freezed classes, DTOs, or routes. Run Flutter analyze and relevant tests before delivery.
