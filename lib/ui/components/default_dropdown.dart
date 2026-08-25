import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';

class DefaultDropdown extends StatelessWidget {
  const DefaultDropdown({
    super.key,
    this.initialValue,
    this.hint,
    required this.items,
    required this.onChanged,
  });

  final String? initialValue;
  final String? hint;
  final List<String> items;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
        contentPadding: .symmetric(vertical: 6, horizontal: 10),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: ColorPalette.greyScaleBlack10),
        ),
      ),
      isExpanded: true,
      initialValue: initialValue,
      hint: Text(hint ?? 'Select options', style: TextStyle(fontSize: 12)),
      menuMaxHeight: size.height * .5,
      borderRadius: .circular(8),
      dropdownColor: Colors.white,
      items: items
          .map(
            (e) => DropdownMenuItem<String>(
              value: e,
              child: Text(
                e,
                maxLines: 2,
                style: TextStyle(fontSize: 12),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          )
          .toList(),
      onChanged: (value) {
        if (value == null) return;
        onChanged(value);
      },
    );
  }
}
