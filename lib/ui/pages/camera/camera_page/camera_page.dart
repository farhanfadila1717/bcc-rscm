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

class _CameraPageState extends State<CameraPage> {
  CameraController? _cameraController;
  List<CameraDescription> _cameras = [];
  CameraLensDirection _currentDirection = CameraLensDirection.front;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    try {
      _cameras = await availableCameras();

      if (_cameras.isEmpty) return;

      final camera = _cameras.firstWhere(
        (camera) => camera.lensDirection == _currentDirection,
        orElse: () => _cameras.first,
      );

      await _setCamera(camera);
    } catch (e) {
      debugPrint('Failed to initialize camera: $e');
    }
  }

  Future<void> _setCamera(CameraDescription camera) async {
    final oldController = _cameraController;

    final controller = CameraController(
      camera,
      ResolutionPreset.high,
      enableAudio: false,
    );

    await controller.initialize();

    await oldController?.dispose();

    if (!mounted) {
      await controller.dispose();
      return;
    }

    setState(() {
      _cameraController = controller;
      _currentDirection = camera.lensDirection;
    });
  }

  Future<void> _switchCamera() async {
    if (_cameras.length < 2) return;

    final newDirection = _currentDirection == CameraLensDirection.front
        ? CameraLensDirection.back
        : CameraLensDirection.front;

    final camera = _cameras.firstWhere(
      (camera) => camera.lensDirection == newDirection,
      orElse: () => _cameras.first,
    );

    await _setCamera(camera);
  }

  @override
  void dispose() {
    _cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'Pengambilan Foto',
        actions: [
          IconButton(
            onPressed: _switchCamera,
            icon: Icon(Icons.flip_camera_ios),
          ),
        ],
      ),
      body: _cameraController == null || !_cameraController!.value.isInitialized
          ? const Center(child: CircularProgressIndicator())
          : Stack(
              children: [
                Positioned.fill(child: CameraPreview(_cameraController!)),
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
                        PrimaryButton(
                          width: .infinity,
                          text: 'Ambil Foto',
                          color: ColorPalette.orange40,
                          onPressed: () {},
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
