import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.text,
    this.child,
    this.color,
    this.onPressed,
    this.width,
  });

  final String? text;
  final Widget? child;
  final VoidCallback? onPressed;
  final Color? color;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 55,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: color),
        child: child ?? Text(text ?? ''),
      ),
    );
  }
}
