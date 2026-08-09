import 'dart:math';

import 'package:bcc_rscm/ui/components/bottom_nav_bar.dart';
import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: ListView(
        children: [
          Padding(
            padding: .symmetric(horizontal: 20),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
          Padding(
            padding: .fromLTRB(20, 24, 20, 8),
            child: Text("Menu", style: theme.textTheme.displaySmall),
          ),
          Padding(
            padding: .fromLTRB(20, 0, 20, 0),
            child: Row(
              children: [
                _MenuItem(
                  icon: 'assets/icons/ic_patient.svg',
                  label: 'Cleft Connect',
                  onTap: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: .fromLTRB(20, 24, 20, 0),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text("Artikel", style: theme.textTheme.displaySmall),
                TextButton(
                  onPressed: () {},
                  child: Text('Lihat Semua', style: TextStyle(fontSize: 12)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150,
            width: double.infinity,
            child: ListView.separated(
              scrollDirection: .horizontal,
              padding: .symmetric(horizontal: 20),
              itemCount: 5,
              separatorBuilder: (_, _) => Gap(size: 16),
              itemBuilder: (_, _) => Container(
                width: min(size.width * 0.8, 300),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(currentIndex: 0),
    );
  }
}

class _MenuItem extends StatelessWidget {
  const _MenuItem({
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
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                color: ColorPalette.bluePrimary,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: SvgPicture.asset(
                  icon,
                  height: 40,
                  width: 40,
                  semanticsLabel: label,
                ),
              ),
            ),
            Text(label, style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
