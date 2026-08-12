import 'dart:math';

import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home_page_action_mapper.dart';

class HomePage extends StatefulGlobalActionMapper with HomePageActionMapper {
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
          // Padding(
          //   padding: .fromLTRB(20, 24, 20, 8),
          //   child: Text("Menu", style: theme.textTheme.displaySmall),
          // ),
          Padding(
            padding: .fromLTRB(20, 24, 20, 0),
            child: Row(
              crossAxisAlignment: .start,
              spacing: 24,
              children: [
                _SmallMenuItem(
                  icon: 'assets/icons/ic_patient.svg',
                  label: 'Cleft\nConnect',
                  onTap: widget.goToCleftConnect,
                ),
                _SmallMenuItem(
                  icon: 'assets/icons/ic_file.svg',
                  label: 'Cleft\nTracker',
                  onTap: () {},
                ),
                _SmallMenuItem(
                  icon: 'assets/icons/ic_user.svg',
                  label: 'Profile',
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
      // bottomNavigationBar: BottomNavBar(currentIndex: 0),
    );
  }
}

class _SmallMenuItem extends StatelessWidget {
  const _SmallMenuItem({
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
