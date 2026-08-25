import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageViewerDialog extends StatefulWidget {
  const new({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  State<ImageViewerDialog> createState() => _ImageViewerDialogState();
}

class _ImageViewerDialogState extends State<ImageViewerDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      backgroundColor: Colors.transparent,
      child: Stack(
        children: [
          Positioned.fill(child: ColoredBox(color: Colors.black12)),
          PhotoView(imageProvider: CachedNetworkImageProvider(widget.imageUrl)),
          SafeArea(
            child: Align(
              alignment: .topRight,
              child: Padding(
                padding: .only(top: 10, left: 10),
                child: IconButton.filled(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.close_rounded),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
