import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';

class DefaultTextfield extends StatelessWidget {
  const DefaultTextfield({
    super.key,
    this.controller,
    this.hint,
    this.onChanged,
    this.maxLines,
  });

  final TextEditingController? controller;
  final String? hint;
  final ValueChanged<String>? onChanged;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Theme(
      data: theme.copyWith(
        textTheme: theme.textTheme.copyWith(
          bodyLarge: TextStyle(fontSize: 12, color: Colors.black),
        ),
        inputDecorationTheme: theme.inputDecorationTheme.copyWith(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorPalette.bluePrimary),
            borderRadius: BorderRadius.circular(10),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ColorPalette.greyScaleBlack10),
          ),
          hintStyle: TextStyle(fontSize: 12),
          contentPadding: .symmetric(vertical: 10, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ColorPalette.greyScaleBlack10),
          ),
        ),
      ),
      child: TextField(
        controller: controller,
        maxLines: maxLines,
        onChanged: onChanged,
        decoration: InputDecoration(hintText: hint),
      ),
    );
  }
}
