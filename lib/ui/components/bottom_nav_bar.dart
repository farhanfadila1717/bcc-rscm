import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.currentIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFF8F8F8),
        borderRadius: .vertical(top: .circular(20)),
      ),
      child: Row(
        mainAxisAlignment: .spaceEvenly,
        crossAxisAlignment: .center,
        children: [
          _NavbarItem(
            icon: 'assets/icons/ic_home_outline.svg',
            selectedIcon: 'assets/icons/ic_home.svg',
            label: 'Home',
            isSelected: _selectedIndex == 0,
            selectedColor: ColorPalette.bluePrimary,
            unselectedColor: Color(0xFF64748B),
            onTap: () => _onItemTapped(0),
          ),
          _NavbarItem(
            icon: 'assets/icons/ic_file.svg',
            selectedIcon: 'assets/icons/ic_file_filled.svg',
            label: 'Tracker',
            isSelected: _selectedIndex == 1,
            selectedColor: ColorPalette.bluePrimary,
            unselectedColor: Color(0xFF64748B),
            onTap: () => _onItemTapped(1),
          ),
          _NavbarItem(
            icon: 'assets/icons/ic_user_outline.svg',
            selectedIcon: 'assets/icons/ic_user.svg',
            label: 'Profile',
            isSelected: _selectedIndex == 3,
            selectedColor: ColorPalette.bluePrimary,
            unselectedColor: Color(0xFF64748B),
            onTap: () => _onItemTapped(2),
          ),
        ],
      ),
    );
  }
}

class _NavbarItem extends StatelessWidget {
  const _NavbarItem({
    required this.icon,
    required this.selectedIcon,
    required this.label,
    required this.isSelected,
    required this.onTap,
    this.selectedColor,
    this.unselectedColor,
  });

  final String icon;
  final String selectedIcon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final Color? selectedColor;
  final Color? unselectedColor;

  @override
  Widget build(BuildContext context) {
    final dselectedColor = selectedColor ?? ColorPalette.bluePrimary;
    final dunselectedColor = unselectedColor ?? Color(0xFF64748B);
    return Column(
      mainAxisSize: .min,
      children: [
        SvgPicture.asset(
          isSelected ? selectedIcon : icon,
          height: 24,
          width: 24,
          colorFilter: ColorFilter.mode(
            isSelected ? dselectedColor : dunselectedColor,
            BlendMode.srcIn,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 11,
            fontWeight: isSelected ? .w600 : .w500,
            color: isSelected ? dselectedColor : dunselectedColor,
          ),
        ),
      ],
    );
  }
}
