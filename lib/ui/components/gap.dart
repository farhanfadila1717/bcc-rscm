import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap({super.key, required this.size});
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size, width: size);
  }
}

class SliverGap extends StatelessWidget {
  const SliverGap({super.key, required this.size});
  final double size;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(child: Gap(size: size));
  }
}
