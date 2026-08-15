import 'dart:io';

import 'package:bcc_rscm/core/api/exceptions/seriliazer_exception.dart';
import 'package:bcc_rscm/core/api/interceptors/curl_interceptors.dart';
import 'package:bcc_rscm/core/models/utils/environment_config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

typedef Seriliazer<T> = T Function(Map<String, dynamic>);

abstract class ApiClient {
  final EnvironmentConfig env;
  final Iterable<Interceptor>? interceptors;

  late Dio _dio;

  ApiClient({required this.interceptors, required this.env}) {
    _dio = Dio(_baseOptions);

    if (interceptors != null && interceptors!.isNotEmpty) {}

    _dio.interceptors.add(CurlInterceptor());
  }

  BaseOptions get _baseOptions => BaseOptions(baseUrl: env.apiUrl);

  Future<T?> post<T>({
    required String endpoint,
    String? token,
    Seriliazer<T>? serializer,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extraHeaders,
    Map<String, dynamic>? body,
    FormData? formData,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final url = buildUrl(endpoint: endpoint);
    try {
      await hasNetwork();

      if (formData != null && body != null) {
        throw Exception('Either formData and body only one is allowed');
      }

      final response = await _dio.post(
        url,
        data: formData ?? body ?? {},
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onSendProgress,
        options: Options(
          headers:
              headers ?? buildHeaders(token: token, extraHeaders: extraHeaders),
        ),
      );

      if (serializer == null) return null;

      return serializer(handleResponseGo(response));
    } catch (ex) {
      rethrow;
    }
  }

  Map<String, dynamic> handleResponseGo(
    Response response, {
    bool useRaw = false,
  }) {
    try {
      return useRaw
          ? (response.data as Map<String, dynamic>)
          : (response.data as Map<String, dynamic>)['data'];
    } catch (ex) {
      throw SeriliazerException();
    }
  }

  Future<bool> hasNetwork() async {
    try {
      if (kIsWeb) return true;
      final result = await InternetAddress.lookup('google.com');
      if (result.isEmpty || result[0].rawAddress.isEmpty) {
        throw const SocketException('No internet connection');
      }
      return true;
    } on SocketException catch (_) {
      rethrow;
    }
  }

  String buildUrl({required String endpoint, String? preferredUrl}) {
    if (preferredUrl == null) return '/$endpoint';

    return '$preferredUrl/$endpoint';
  }

  // Creates a Map with the necessary headers for any request sent to our API
  Map<String, dynamic> buildHeaders({
    String? token,
    Map<String, dynamic>? extraHeaders,
  }) {
    var headers = <String, dynamic>{
      ApiConstants.contentTypeHeader: "application/json",
      ApiConstants.apiKeyHeader: env.apiKey,
      ApiConstants.appVersionCodeHeader: env.appVersionCode,
      ApiConstants.appVersionNameHeader: env.appVersionName,
      "Accept-Language": "id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7",
      "Content-Language": "id-ID",
    };

    if (token != null) {
      headers[ApiConstants.authorizationHeader] = "Bearer $token";
    }

    if (extraHeaders != null) {
      headers.addAll(extraHeaders as Map<String, String>);
    }

    return headers;
  }
}

final class ApiConstants {
  static const apiKeyHeader = "x-api-key";
  static const contentTypeHeader = "Content-type";
  static const appVersionCodeHeader = "App-Version-Code";
  static const appVersionNameHeader = "App-Version-Name";
  static const acceptHeader = "Accept";
  static const authorizationHeader = "Authorization";
  static const localeHeader = "locale";
  static const platformHeader = "platform";
  static const deviceWidth = "device-width";
  static const deviceHeight = "device-height";
  static const deviceInfo = "device-info";
  static const deviceBrightness = "device-brightness";
}
