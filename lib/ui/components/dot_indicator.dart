import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    required this.currentIndex,
    required this.itemCount,
    this.activeColor = const Color(0xFF1F4391),
    this.inactiveColor = const Color(0xFFE5E4E3),
    this.dotSize = 8,
    this.spacing = 8,
  });

  final int currentIndex;
  final int itemCount;
  final Color activeColor;
  final Color inactiveColor;
  final double dotSize;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: spacing,
      children: List.generate(itemCount, (index) {
        return Container(
          width: dotSize,
          height: dotSize,
          decoration: BoxDecoration(
            color: index == currentIndex ? activeColor : inactiveColor,
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}
