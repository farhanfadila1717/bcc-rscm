extension NullableListExtension on List? {
  bool get isNullOrEmpty => this == null || (this != null && this!.isEmpty);
}
