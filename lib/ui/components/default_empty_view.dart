import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:bcc_rscm/ui/components/primary_button.dart';
import 'package:flutter/material.dart';

class DefaultEmptyView extends StatelessWidget {
  const DefaultEmptyView({
    super.key,
    this.title = 'Data is empty',
    this.subtitle = 'There is no data to serve, refresh or try again later',
    this.onRefresh,
    this.padding = const .symmetric(horizontal: 20),
  });

  final String title;
  final String subtitle;
  final VoidCallback? onRefresh;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? .zero,
      child: Column(
        crossAxisAlignment: .center,
        mainAxisAlignment: .center,
        children: [
          Icon(Icons.sentiment_very_dissatisfied_sharp),
          Gap(size: 8),
          Text(
            title,
            style: TextStyle(color: Colors.black, fontWeight: .bold),
          ),
          Gap(size: 4),
          Text(subtitle, textAlign: .center),
          if (onRefresh != null) ...[
            Gap(size: 20),
            PrimaryButton(text: 'Refresh', onPressed: onRefresh),
          ],
        ],
      ),
    );
  }
}
