import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SmallMenuItem extends StatelessWidget {
  const SmallMenuItem({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final String icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          spacing: 10,

          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: ColorPalette.bluePrimary,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: SvgPicture.asset(
                  icon,
                  height: 24,
                  width: 24,
                  semanticsLabel: label,
                  colorFilter: ColorFilter.mode(Colors.white, .srcIn),
                ),
              ),
            ),
            Text(label, style: TextStyle(fontSize: 12), textAlign: .center),
          ],
        ),
      ),
    );
  }
}
