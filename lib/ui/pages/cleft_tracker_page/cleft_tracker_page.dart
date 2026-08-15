import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/ui/components/default_appbar.dart';
import 'package:bcc_rscm/ui/components/tile_menu_item.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';

class CleftTrackerPage extends StatefulGlobalActionMapper {
  const CleftTrackerPage({super.key});

  @override
  State<CleftTrackerPage> createState() => _CleftTrackerPageState();
}

class _CleftTrackerPageState extends State<CleftTrackerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'Cleft Tracker'),
      body: ListView(
        padding: .fromLTRB(20, 0, 20, 20),
        children: [
          TileMenuItem(title: 'Profil Pasien', onPressed: () {}),
          Divider(
            height: 1,
            thickness: 1,
            color: ColorPalette.greyScaleBlack10,
          ),
          TileMenuItem(title: 'Laporan Visit Awal', onPressed: () {}),
          Divider(
            height: 1,
            thickness: 1,
            color: ColorPalette.greyScaleBlack10,
          ),
          TileMenuItem(title: 'Laporan Visit Rutin', onPressed: () {}),
          Divider(
            height: 1,
            thickness: 1,
            color: ColorPalette.greyScaleBlack10,
          ),
          TileMenuItem(title: 'Laporan Operasi', onPressed: () {}),
          Divider(
            height: 1,
            thickness: 1,
            color: ColorPalette.greyScaleBlack10,
          ),
        ],
      ),
    );
  }
}
