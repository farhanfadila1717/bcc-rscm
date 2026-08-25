import 'dart:io';
import 'dart:math';

import 'package:bcc_rscm/ui/components/default_appbar.dart';
import 'package:bcc_rscm/ui/components/gap.dart';
import 'package:bcc_rscm/ui/components/primary_button.dart';
import 'package:bcc_rscm/ui/themes/colors.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> with WidgetsBindingObserver {
  CameraController? _cameraController;
  List<CameraDescription> _cameras = [];
  int _selectedCameraIndex = 0;
  XFile? _file;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _getCamera();
  }

  Future<void> _getCamera() async {
    try {
      _cameras = await availableCameras();

      if (_cameras.isEmpty) throw 'there is no available camera';

      // Prefer front camera if any
      for (int i = 0; i < _cameras.length; i++) {
        if (_cameras[i].lensDirection == .front) {
          _selectedCameraIndex = i;
          break;
        }
      }

      _initializeCameraController(_cameras[_selectedCameraIndex]);
    } catch (ex) {
      debugPrint(ex.toString());
    }
  }

  Future<void> _switchCamera() async {
    final currentCameraDescription = _cameras[_selectedCameraIndex];

    for (int i = 0; i < _cameras.length; i++) {
      if (_selectedCameraIndex == i) continue;
      final camera = _cameras[i];

      if (camera.lensDirection != currentCameraDescription.lensDirection) {
        onNewCameraSelected(camera);
        _selectedCameraIndex = i;
        setState(() {});
        break;
      }
    }
  }

  Future<void> onNewCameraSelected(CameraDescription cameraDescription) async {
    if (_cameraController != null) {
      return _cameraController!.setDescription(cameraDescription);
    } else {
      return _initializeCameraController(cameraDescription);
    }
  }

  Future<void> _initializeCameraController(
    CameraDescription cameraDescription,
  ) async {
    final cameraController = CameraController(
      cameraDescription,
      ResolutionPreset.medium,
      enableAudio: false,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );

    _cameraController = cameraController;

    // If the controller is updated then update the UI.
    cameraController.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });

    try {
      await cameraController.initialize();
    } on CameraException catch (e) {
      switch (e.code) {
        case 'CameraAccessDenied':
        case 'CameraAccessDeniedWithoutPrompt':
        // iOS only
        case 'CameraAccessRestricted':
        // iOS only
        case 'AudioAccessDenied':
        case 'AudioAccessDeniedWithoutPrompt':
        // iOS only
        case 'AudioAccessRestricted':
        // iOS only
        default:
      }
    }

    if (mounted) {
      setState(() {});
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController? cameraController = _cameraController;

    // App state changed before we got the chance to initialize.
    if (cameraController == null || !cameraController.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      cameraController.dispose();
    } else if (state == AppLifecycleState.resumed) {
      _initializeCameraController(cameraController.description);
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'Pengambilan Foto',
        actions: [
          if (_file == null)
            IconButton(
              onPressed: _switchCamera,
              icon: Icon(Icons.flip_camera_ios),
            ),
        ],
      ),
      body: _cameraController == null || !_cameraController!.value.isInitialized
          ? const Center(child: CircularProgressIndicator())
          : _file != null
          ? Stack(
              children: [
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Expanded(
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: SizedBox(
                              width:
                                  _cameraController!.value.previewSize!.height,
                              height:
                                  _cameraController!.value.previewSize!.width,
                              child: Image.file(File(_file!.path)),
                            ),
                          ),
                        ),
                        Gap(size: 20),
                        Text(
                          'Apakah foto sudah terlihat jelas?',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: .bold,
                          ),
                          textAlign: .center,
                        ),
                        Gap(size: 24),
                        SafeArea(
                          top: false,
                          child: Row(
                            spacing: 16,
                            children: [
                              Expanded(
                                child: OutlinedButton(
                                  child: Text('Ulangi'),
                                  onPressed: () async {
                                    setState(() {
                                      _file = null;
                                      _cameraController!.resumePreview();
                                    });
                                  },
                                ),
                              ),
                              Expanded(
                                child: PrimaryButton(
                                  width: .infinity,
                                  text: 'Jelas',
                                  color: ColorPalette.bluePrimary,
                                  onPressed: () =>
                                      Navigator.pop(context, _file),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : Stack(
              children: [
                Positioned.fill(
                  child: ClipRect(
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: SizedBox(
                        width: _cameraController!.value.previewSize!.height,
                        height: _cameraController!.value.previewSize!.width,
                        child: CameraPreview(_cameraController!),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Spacer(),
                        Text(
                          'Saat Ini Sedang Dilakukan Pengambilan Foto',
                          style: TextStyle(color: Colors.white),
                        ),
                        Gap(size: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: CustomPaint(
                              painter: FrameCameraGuidePainter(),
                            ),
                          ),
                        ),
                        Gap(size: 20),
                        Text(
                          'Pastikan wajah menghadap ke depan dan mengisi kerangka foto!',
                          style: TextStyle(color: Colors.white),
                          textAlign: .center,
                        ),
                        Spacer(),
                        SafeArea(
                          top: false,
                          child: PrimaryButton(
                            width: .infinity,
                            text: 'Ambil Foto',
                            color: ColorPalette.orange40,
                            onPressed: () async {
                              final file = await _cameraController!
                                  .takePicture();

                              _cameraController?.pausePreview();

                              setState(() {
                                _file = file;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}

class FrameCameraGuidePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;

    final strokeWidth = min(height, width) * .25;

    final strokePaint = Paint()
      ..style = .stroke
      ..strokeWidth = 2
      ..color = Colors.white;

    final topLeft = Path()
      ..moveTo(strokeWidth, 0)
      ..lineTo(0, 0)
      ..lineTo(0, strokeWidth);

    final bottomLeft = Path()
      ..moveTo(0, height - strokeWidth)
      ..lineTo(0, height)
      ..lineTo(strokeWidth, height);

    final topRight = Path()
      ..moveTo(width - strokeWidth, 0)
      ..lineTo(width, 0)
      ..lineTo(width, strokeWidth);

    final bottomRight = Path()
      ..moveTo(width, height - strokeWidth)
      ..lineTo(width, height)
      ..lineTo(width - strokeWidth, height);

    canvas.drawPath(topLeft, strokePaint);
    canvas.drawPath(bottomLeft, strokePaint);

    canvas.drawPath(topRight, strokePaint);
    canvas.drawPath(bottomRight, strokePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
