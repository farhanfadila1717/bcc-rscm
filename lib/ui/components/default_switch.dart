import 'package:flutter/cupertino.dart';

class DefaultSwitch extends StatelessWidget {
  const DefaultSwitch({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: .min,
      spacing: 4,
      children: [
        Text(value ? 'Yes' : 'No'),
        CupertinoSwitch(value: value, onChanged: onChanged),
      ],
    );
  }
}
