import 'dart:io';

import 'package:bcc_rscm/core/redux/action_mapper.dart';
import 'package:bcc_rscm/core/redux/actions/navigation_actions.dart';
import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:bcc_rscm/ui/components/primary_button.dart';
import 'package:bcc_rscm/ui/components/title_form.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DefaultImagePicker extends StatefulGlobalActionMapper {
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
      crossAxisAlignment: .start,
      children: [
        if (imageUrl != null && imageUrl!.isNotEmpty)
          Align(
            alignment: .topCenter,
            child: ClipRRect(
              child: SizedBox(
                height: widget.previewHeight,
                width: widget.previewWidth,
                child: _isNetworkImage
                    ? CachedNetworkImage(imageUrl: imageUrl!, fit: .cover)
                    : Image.file(File(imageUrl!), fit: .cover),
              ),
            ),
          ),
        Gap(size: 8),
        TitleForm(title: 'Upload Foto Baru'),
        Gap(size: 4),
        SizedBox(
          height: 50,
          width: double.infinity,

          child: Row(
            spacing: 10,
            children: [
              Expanded(
                child: PrimaryButton(
                  child: Row(
                    spacing: 4,
                    mainAxisAlignment: .center,
                    children: [Icon(Icons.camera_alt), Text('Camera')],
                  ),
                  onPressed: () => widget.dispatch(
                    NavigateToNextAction(
                      '/camera',
                      onBack: (value) {
                        if (value is XFile) {
                          setState(() {
                            imageUrl = value.path;
                          });
                        }
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () async {
                      final picker = await ImagePicker().pickImage(
                        source: .gallery,
                      );

                      if (picker != null) {
                        setState(() {
                          imageUrl = picker.path;
                        });
                      }
                    },
                    child: Row(
                      spacing: 4,
                      mainAxisAlignment: .center,
                      children: [
                        Icon(Icons.image_search_rounded),
                        Text('Gallery'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
