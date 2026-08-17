import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  String get ddMMyyyySlice => DateFormat('dd/MM/yyyy').format(this);
}
