import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class CurlInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      log('\x1B[36m${options.toCurl}');
    }

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}

extension CurlExtensions on RequestOptions {
  String get toCurl {
    List<String> components = ['curl -i'];
    if (method.toUpperCase() != 'GET') {
      components.add('-X $method');
    }

    for (final k in headers.keys) {
      if (k == 'content-length') continue;

      components.add('-H "$k: ${headers[k]}"');
    }

    var tempData = data;

    if (tempData != null) {
      // FormData can't be JSON-serialized, so keep only their fields attributes
      if (tempData is FormData) {
        tempData = Map.fromEntries(data.fields);
      }

      tempData = json.encode(tempData).replaceAll('"', '\\"');
      components.add('-d "$tempData"');
    }

    components.add('"${uri.toString()}"');

    return components.join(' \\\n\t');
  }
}
