import 'package:bcc_rscm/core/extensions/string_extensions.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:flutter/material.dart';

class CircleName extends StatelessWidget {
  const CircleName({super.key, required this.dimension, required this.name});

  final double dimension;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: dimension,
      width: dimension,
      decoration: BoxDecoration(
        color: ColorPalette.bluePrimary,
        shape: .circle,
      ),
      child: Center(
        child: Text(
          name.initials,
          style: TextStyle(color: Colors.white, fontWeight: .bold),
        ),
      ),
    );
  }
}
