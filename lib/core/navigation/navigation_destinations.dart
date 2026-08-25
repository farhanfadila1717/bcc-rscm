import 'package:bcc_rscm/ui/components/image_viewer_dialog.dart';
import 'package:flutter/material.dart';

abstract class GlobalNavigationDestination {
  final Key? key;

  const GlobalNavigationDestination({this.key});

  Widget builder(BuildContext context);
}

final class ImageViewerDialogDestination extends GlobalNavigationDestination {
  final String imageUrl;

  const new({required this.imageUrl});

  @override
  Widget builder(BuildContext context) => ImageViewerDialog(imageUrl: imageUrl);
}
