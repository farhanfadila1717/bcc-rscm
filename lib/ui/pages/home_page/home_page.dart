import 'dart:math';

import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:bcc_rscm/ui/components/home_carousel.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

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
          HomeCarousel(),
          Padding(
            padding: .fromLTRB(20, 24, 20, 8),
            child: Text("Menu", style: theme.textTheme.displaySmall),
          ),
          Padding(
            padding: .fromLTRB(20, 8, 20, 0),
            child: Row(
              crossAxisAlignment: .start,
              spacing: 24,
              children: [
                SmallMenuItem(
                  icon: 'assets/icons/ic_patient.svg',
                  label: 'Cleft\nConnect',
                  onTap: widget.goToCleftConnect,
                ),
                SmallMenuItem(
                  icon: 'assets/icons/ic_tracker.svg',
                  label: 'Cleft\nTracker',
                  onTap: widget.goToCleftTracker,
                ),
                SmallMenuItem(
                  icon: 'assets/icons/ic_inbox.svg',
                  label: 'Pesan',
                  onTap: () {},
                ),
                SmallMenuItem(
                  icon: 'assets/icons/ic_profile.svg',
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
            height: 125,
            width: double.infinity,
            child: ListView.separated(
              scrollDirection: .horizontal,
              padding: .symmetric(horizontal: 20),
              itemCount: 5,
              separatorBuilder: (_, _) => Gap(size: 16),
              itemBuilder: (_, _) => Container(
                width: min(size.width * 0.8, 300),
                padding: .all(16),
                decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  spacing: 10,
                  children: [
                    ClipRRect(
                      borderRadius: .circular(10),
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Image.network(
                          'https://www.bicarakan.id/blog/wp-content/uploads/2025/09/girl-pushing-mom-skateboard-2-scaled.webp',
                          fit: .cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: .symmetric(vertical: 4),
                        child: Column(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Text(
                              'Bibir Sumbing pada Bayi: Penyebab, Tanda, dan Penyembuhannya',
                              style: TextStyle(
                                fontSize: 12,
                                color: ColorPalette.bluePrimary,
                                fontWeight: .w500,
                              ),
                            ),
                            Row(
                              spacing: 4,
                              children: [
                                Icon(
                                  Icons.access_time_rounded,
                                  size: 16,
                                  color: ColorPalette.greyIcon,
                                ),
                                Text(
                                  DateFormat(
                                    'd MMMM yyyy',
                                  ).format(DateTime.now()),
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: .w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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
