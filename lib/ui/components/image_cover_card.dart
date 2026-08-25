import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageCoverCard extends StatefulWidget {
  const ImageCoverCard({super.key, required this.url, this.borderRadius});

  final String url;
  final BorderRadius? borderRadius;

  @override
  State<ImageCoverCard> createState() => _ImageCoverCardState();
}

class _ImageCoverCardState extends State<ImageCoverCard> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: widget.borderRadius ?? .zero,
      child: CachedNetworkImage(
        imageUrl: widget.url,
        progressIndicatorBuilder: (_, _, progress) =>
            CircularProgressIndicator.adaptive(value: progress.progress),
      ),
    );
  }
}
