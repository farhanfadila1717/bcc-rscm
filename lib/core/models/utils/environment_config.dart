/// {@template EnvironmentConfig}
/// The EnvironmentConfig class represents the configuration for the environment
/// that the application is running in. It contains information such as
/// the application name, environment, API URL, API key, and other settings.
/// {@endtemplate}
class EnvironmentConfig {
  /// {@macro EnvironmentConfig}
  const EnvironmentConfig({
    required this.appName,
    required this.apiUrl,
    required this.apiKey,
    required this.appVersionName,
    required this.appVersionCode,
  });

  /// The name of the application.
  final String appName;

  /// The URL of the API.
  final String apiUrl;

  /// The API key used to authenticate requests.
  final String apiKey;

  /// The version name of the application.
  final String appVersionName;

  /// The version code of the application.
  final String appVersionCode;

  /// The EnvironmentConfig.fromMap method is a factory constructor that creates an
  /// instance of the EnvironmentConfig class from a Map.
  factory EnvironmentConfig.fromMap(Map<String, String> data) {
    return EnvironmentConfig(
      appName: data['APP_NAME']!,
      apiUrl: data['API_URL']!,
      apiKey: data['API_KEY']!,
      appVersionName: data['APP_VERSION_NAME']!,
      appVersionCode: data['APP_VERSION_CODE']!,
    );
  }
}
