import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultTextfield extends StatefulWidget {
  const DefaultTextfield({
    super.key,
    this.initial,
    this.controller,
    this.hint,
    this.onChanged,
    this.maxLines,
    this.inputFormatters,
    this.readOnly,
  });

  final String? initial;
  final TextEditingController? controller;
  final String? hint;
  final ValueChanged<String>? onChanged;
  final int? maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final bool? readOnly;

  @override
  State<DefaultTextfield> createState() => _DefaultTextfieldState();
}

class _DefaultTextfieldState extends State<DefaultTextfield> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        widget.controller ?? TextEditingController(text: widget.initial);
  }

  @override
  void didUpdateWidget(covariant DefaultTextfield oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initial != null && oldWidget.initial != widget.initial) {
      if (_controller.text == widget.initial) return;
      _controller.text = widget.initial!;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
        readOnly: widget.readOnly ?? false,
        controller: _controller,
        maxLines: widget.maxLines,
        onChanged: widget.onChanged,
        inputFormatters: widget.inputFormatters,
        decoration: InputDecoration(hintText: widget.hint),
      ),
    );
  }
}
