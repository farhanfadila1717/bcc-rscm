import 'package:intl/intl.dart';

extension StringExtensions on String {
  String get initials {
    final words = trim()
        .split(RegExp(r'\s+'))
        .where((word) => word.isNotEmpty)
        .toList();

    if (words.isEmpty) return '';

    if (words.length == 1) {
      return words.first.substring(0, 1).toUpperCase();
    }

    return '${words.first[0]}${words.last[0]}'.toUpperCase();
  }

  String? get preferNullWhenEmpty => isEmpty ? null : this;

  DateTime get convertFromApi => DateFormat('yyyy-MM-dd').parse(this);

  DateTime? get convertFromApiNullable =>
      preferNullWhenEmpty == null ? null : DateFormat('yyyy-MM-dd').parse(this);

  bool get fromYaOrTidak => this == 'Ya';

  bool get isFromNetwork {
    final uri = Uri.tryParse(this);

    return uri != null && (uri.scheme == 'http' || uri.scheme == 'https');
  }
}
