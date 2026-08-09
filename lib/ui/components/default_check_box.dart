import 'package:flutter/material.dart';

class DefaultCheckBox extends StatefulWidget {
  const DefaultCheckBox({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  State<DefaultCheckBox> createState() => _DefaultCheckBoxState();
}

class _DefaultCheckBoxState extends State<DefaultCheckBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onChanged(!widget.value),
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          border: !widget.value ? Border.all(color: Colors.grey) : null,
          borderRadius: BorderRadius.circular(4),
          color: widget.value ? Theme.of(context).colorScheme.primary : null,
        ),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: widget.value
              ? Icon(Icons.check, size: 16, color: Colors.white)
              : SizedBox.shrink(),
        ),
      ),
    );
  }
}
