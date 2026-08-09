/// {@template user_friendly_exception}
/// This interface is created so that every exception
/// thrown by ourselves can be identified as a UserFriendlyException.
///
/// This lets us handle all of our exceptions as one,
/// but also cast to a specific exception in case it is needed
/// {@endtemplate}
abstract class UserFriendlyException implements Exception {
  /// The user-friendly message of the exception
  String get getUserFriendlyMessage;

  /// The code of the exception
  int? get getCode;

  @override
  String toString() => getUserFriendlyMessage;
}
