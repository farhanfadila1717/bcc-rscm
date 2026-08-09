import 'package:bcc_rscm/core/api/exceptions/user_friendly_exception.dart';

final class SeriliazerException implements UserFriendlyException {
  @override
  int? get getCode => 400;

  @override
  String get getUserFriendlyMessage =>
      'SERIALIZER_ERROR: Failed to seriliazer response';
}
