import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CircleAvatarImage extends StatelessWidget {
  const CircleAvatarImage({
    super.key,
    required this.imageUrl,
    this.dimension = 55,
  });

  final String imageUrl;
  final double dimension;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        progressIndicatorBuilder: (_, _, _) {
          return SizedBox.square(
            dimension: dimension,
            child: ColoredBox(color: ColorPalette.greyScaleBlack30),
          );
        },
      ),
    );
  }
}
