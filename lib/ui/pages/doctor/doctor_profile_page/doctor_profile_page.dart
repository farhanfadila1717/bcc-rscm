import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/ui/components/circle_name.dart';
import 'package:bcc_rscm/ui/components/default_appbar.dart';
import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';

import 'doctor_profile_page_action_mapper.dart';

class DoctorProfilePage extends StatefulGlobalActionMapper
    with DoctorProfilePageActionMapper {
  const DoctorProfilePage({super.key});

  @override
  State<DoctorProfilePage> createState() => _DoctorProfilePageState();
}

class _DoctorProfilePageState extends State<DoctorProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'Profil Dokter'),
      body: ListView(
        padding: .fromLTRB(20, 0, 20, 20),
        children: [
          CircleName(dimension: 55, name: 'Vero'),
          Gap(size: 24),
          Container(
            padding: .all(16),
            decoration: BoxDecoration(
              border: .all(color: ColorPalette.greyScaleBlack10),
              borderRadius: .circular(10),
            ),
            child: Column(
              crossAxisAlignment: .start,
              spacing: 4,
              children: [
                Text(
                  'dr Vero M',
                  style: TextStyle(fontWeight: .w600, color: Colors.black),
                ),
                Text('2831732319'),
                Text('Spesialis Anak'),
              ],
            ),
          ),
          Gap(size: 24),
          SizedBox(
            height: 55,
            child: OutlinedButton(
              onPressed: widget.logout,
              style: OutlinedButton.styleFrom(
                foregroundColor: ColorPalette.red,
                side: BorderSide(color: ColorPalette.red),
              ),
              child: Text('Log Out'),
            ),
          ),
        ],
      ),
    );
  }
}
