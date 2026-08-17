import 'package:bcc_rscm/core/extensions/extensions.dart';
import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';

class DefaultDatePicker extends StatefulGlobalActionMapper {
  const DefaultDatePicker({
    super.key,
    this.selected,
    required this.onChanged,
    this.hint,
  });

  final DateTime? selected;
  final ValueChanged<DateTime> onChanged;
  final String? hint;

  @override
  State<DefaultDatePicker> createState() => _DefaultDatePickerState();
}

class _DefaultDatePickerState extends State<DefaultDatePicker> {
  late DateTime? _selected;

  @override
  void initState() {
    super.initState();
    _selected = widget.selected;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      padding: .symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: .all(color: ColorPalette.greyScaleBlack10),
        borderRadius: .circular(8),
      ),
      child: Row(
        spacing: 4,
        children: [
          Expanded(
            child: Text(
              _selected != null ? _selected!.ddMMyyyySlice : 'Pilih tanggal',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Icon(Icons.calendar_month_rounded),
        ],
      ),
    );
  }
}
