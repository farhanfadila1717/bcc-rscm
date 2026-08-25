import 'package:bcc_rscm/core/navigation/navigation_destinations.dart';
import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/core/redux/actions/navigation_actions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageCoverCard extends StatelessGlobalActionMapper {
  const ImageCoverCard({super.key, required this.url, this.borderRadius});

  final String url;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => dispatch(
        ShowDialogAction(
          destination: ImageViewerDialogDestination(imageUrl: url),
        ),
      ),
      child: ClipRRect(
        borderRadius: borderRadius ?? .zero,
        child: CachedNetworkImage(
          imageUrl: url,
          progressIndicatorBuilder: (_, _, progress) =>
              CircularProgressIndicator.adaptive(value: progress.progress),
        ),
      ),
    );
  }
}
