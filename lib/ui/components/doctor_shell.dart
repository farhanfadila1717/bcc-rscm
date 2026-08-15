import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/core/redux/actions/navigation_actions.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

List<String> paths = ['/doctor-home', '/doctor-profile'];

class DoctorShell extends StatelessGlobalActionMapper {
  const DoctorShell({super.key, required this.child});

  final Widget child;

  int _getSelectedIndex(String path) {
    if (path.startsWith('/doctor-home')) return 0;
    if (path.startsWith('/doctor-profile')) return 1;

    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final path = GoRouterState.of(context).uri.path;
    final selectedIndex = _getSelectedIndex(path);

    return Scaffold(
      body: child,
      bottomNavigationBar: ClipRRect(
        borderRadius: .vertical(top: .circular(50)),
        child: NavigationBar(
          selectedIndex: selectedIndex,
          indicatorColor: Colors.transparent,
          backgroundColor: Color(0xFFF8F8F8),
          labelTextStyle: WidgetStateProperty.resolveWith<TextStyle?>((states) {
            if (states.contains(WidgetState.selected)) {
              return const TextStyle(
                fontSize: 12,
                color: ColorPalette.bluePrimary,
                fontWeight: FontWeight.w600,
              );
            }

            return const TextStyle(fontSize: 12, fontWeight: FontWeight.w400);
          }),
          onDestinationSelected: (index) {
            switch (index) {
              case 0:
                dispatch(NavigateGoNextAction('/doctor-home'));
                break;
              case 1:
                dispatch(NavigateGoNextAction('/doctor-profile'));
                break;
              default:
            }
          },
          destinations: [
            NavigationDestination(
              icon: SvgPicture.asset(
                'assets/icons/ic_tracker.svg',
                colorFilter: .mode(ColorPalette.greyScaleBlack30, .srcIn),
              ),
              selectedIcon: SvgPicture.asset(
                'assets/icons/ic_tracker.svg',
                colorFilter: .mode(ColorPalette.bluePrimary, .srcIn),
              ),
              label: 'Data Pasien',
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                'assets/icons/ic_profile.svg',
                colorFilter: .mode(ColorPalette.greyScaleBlack30, .srcIn),
              ),
              selectedIcon: SvgPicture.asset(
                'assets/icons/ic_profile.svg',
                colorFilter: .mode(ColorPalette.bluePrimary, .srcIn),
              ),
              label: 'Profil Dokter',
            ),
          ],
        ),
      ),
    );
  }
}
