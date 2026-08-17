import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DefaultImagePicker extends StatefulWidget {
  const DefaultImagePicker({
    super.key,
    required this.previousImageUrl,
    this.onImageCaptured,
    this.previewHeight = 200,
    this.previewWidth = 200,
  });

  final String? previousImageUrl;
  final ValueChanged<String>? onImageCaptured;
  final double? previewWidth;
  final double? previewHeight;

  @override
  State<DefaultImagePicker> createState() => _DefaultImagePickerState();
}

class _DefaultImagePickerState extends State<DefaultImagePicker> {
  String? imageUrl;

  @override
  void initState() {
    super.initState();
    imageUrl = widget.previousImageUrl;
  }

  bool get _isNetworkImage {
    final uri = Uri.tryParse(imageUrl ?? '');
    return uri != null && (uri.scheme == 'http' || uri.scheme == 'https');
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (imageUrl != null && imageUrl!.isNotEmpty)
          SizedBox(
            height: widget.previewHeight,
            width: widget.previewWidth,
            child: _isNetworkImage
                ? CachedNetworkImage(imageUrl: imageUrl!, fit: .cover)
                : Image.file(File(imageUrl!), fit: .cover),
          ),
      ],
    );
  }
}
