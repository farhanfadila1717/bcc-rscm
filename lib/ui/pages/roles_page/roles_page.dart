import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'roles_page_action_mapper.dart';

class RolesPage extends StatefulGlobalActionMapper with RolesPageActionMapper {
  const RolesPage({super.key});

  @override
  State<RolesPage> createState() => _RolesPageState();
}

class _RolesPageState extends State<RolesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pilih Role',
          style: TextStyle(fontWeight: .w600, fontSize: 24),
        ),
        centerTitle: false,
      ),
      floatingActionButtonLocation: .centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: widget.goToHome,
            child: Text('Lanjut'),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
        children: [
          Text('Silahkan pilih role untuk melanjutkan'),
          Gap(size: 40),
          RoleItemCard(
            icon: 'assets/icons/ic_patient.svg',
            label: 'Pasien',
            onTap: widget.goToSignInPatient,
          ),
          Gap(size: 40),

          RoleItemCard(
            icon: 'assets/icons/ic_doctor.svg',
            label: 'Dokter',
            onTap: () {},
          ),
          Gap(size: 60),
        ],
      ),
    );
  }
}

class RoleItemCard extends StatelessWidget {
  const RoleItemCard({
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
            Text(label),
          ],
        ),
      ),
    );
  }
}
