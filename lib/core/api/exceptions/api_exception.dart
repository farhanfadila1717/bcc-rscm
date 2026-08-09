import 'package:bcc_rscm/core/api/exceptions/user_friendly_exception.dart';

class ApiException implements UserFriendlyException {
  final String message;
  final int? statusCode;
  final dynamic body;

  ApiException(this.message, this.statusCode, {this.body});

  @override
  int? get getCode => statusCode;

  @override
  String get getUserFriendlyMessage =>
      'ApiException(statusCode: $statusCode, message: $message, body: $body)';
}
