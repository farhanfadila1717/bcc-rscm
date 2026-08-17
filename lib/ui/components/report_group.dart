import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:flutter/material.dart';

class ReportGroup extends StatelessWidget {
  const ReportGroup({
    super.key,
    required this.title,
    required this.children,
    this.trailing,
  });

  final String title;
  final Widget? trailing;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .fromLTRB(20, 0, 20, 0),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: .bold,
                  ),
                ),
              ),
              ?trailing,
            ],
          ),
          Gap(size: 4),
          ...children,
        ],
      ),
    );
  }
}
