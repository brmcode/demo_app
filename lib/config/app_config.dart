/// Centralized configuration — swap per build flavor.
abstract final class AppConfig {
  // Supports runtime override: flutter run --dart-define=BASE_URL=...
  static const String baseUrl = String.fromEnvironment(
    'BASE_URL',
    defaultValue: 'http://172.19.49.145:8080',
  );
}
