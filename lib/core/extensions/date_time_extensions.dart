import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  String get ddMMyyyySlice => DateFormat('dd/MM/yyyy').format(this);

  String get convertToStringForApi => DateFormat('yyyy-MM-dd').format(this);

  String get mmyyy => DateFormat('MMMM yyyy', 'id').format(this);
}
