import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';

class DefaultChip extends StatelessWidget {
  const DefaultChip({
    super.key,
    required this.text,
    this.backgroundColor,
    this.padding,
    this.textStyle,
  });

  final String text;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor ?? ColorPalette.blueSecondary,
        borderRadius: .circular(20),
      ),
      child: Padding(
        padding: padding ?? .symmetric(horizontal: 10, vertical: 4),
        child: Text(
          text,
          style:
              textStyle ??
              TextStyle(color: Colors.white, fontSize: 12, fontWeight: .bold),
        ),
      ),
    );
  }
}
