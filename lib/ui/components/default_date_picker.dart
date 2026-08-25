import 'package:bcc_rscm/core/extensions/extensions.dart';
import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/core/redux/actions/navigation_actions.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';

class DefaultDatePicker extends StatelessGlobalActionMapper {
  const DefaultDatePicker({
    super.key,

    required this.onChanged,
    this.selected,
    this.firstDate,
    this.lastDate,
    this.hint,
  });

  final ValueChanged<DateTime> onChanged;
  final DateTime? selected;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => dispatch(
        ShowDatePickerAction(
          firstDate: firstDate,
          lastDate: lastDate,
          targetDate: selected,
          onDateSelected: (date) {
            if (date == null) return;

            onChanged(date);
          },
        ),
      ),
      child: Container(
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
                selected != null ? selected!.ddMMyyyySlice : 'Pilih tanggal',
                style: TextStyle(
                  fontSize: 12,
                  color: selected != null ? Colors.black : null,
                ),
              ),
            ),
            Icon(Icons.calendar_month_rounded),
          ],
        ),
      ),
    );
  }
}
