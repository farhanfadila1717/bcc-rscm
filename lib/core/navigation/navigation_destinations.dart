import 'package:flutter/material.dart';

abstract class GlobalNavigationDestination {
  final Key? key;

  const GlobalNavigationDestination({this.key});

  Widget builder(BuildContext context);
}
