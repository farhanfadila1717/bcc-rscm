import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  double get statusBarHeight => MediaQuery.paddingOf(this).top;
  double flexibleSpaceHeight(double height) => statusBarHeight + height;
}
