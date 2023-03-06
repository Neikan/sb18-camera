// Dart imports:
import 'dart:async';
import 'dart:io';

// Flutter imports:
import 'package:app_camera/ui/components/ui_loader.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:camera/camera.dart';

// Project imports:
import 'package:app_camera/consts/routes.dart';
import 'package:app_camera/ui/components/ui_bottom_navigation_bar.dart';

class ScreenCamera extends StatefulWidget {
  const ScreenCamera({super.key});

  @override
  State<ScreenCamera> createState() => _ScreenCameraState();
}

class _ScreenCameraState extends State<ScreenCamera>
    with WidgetsBindingObserver {
  late List<CameraDescription> cameras;
  CameraController? controller;
  XFile? lastImage;

  @override
  void initState() {
    super.initState();

    unawaited(_initCamera());
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController? cameraController = controller;

    if (cameraController == null || !cameraController.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      cameraController.dispose();
    }

    if (state == AppLifecycleState.resumed) {
      _onNewCameraSelected(cameraController.description);
    }

    super.didChangeAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final deviceRatio = size.width / size.height;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            controller?.value.isInitialized == true
                ? Center(
                    child: AspectRatio(
                      aspectRatio: deviceRatio,
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.diagonal3Values(
                          controller!.value.aspectRatio / deviceRatio,
                          1.0,
                          1.0,
                        ),
                        child: CameraPreview(controller!),
                      ),
                    ),
                  )
                : const UiLoader(),
            if (lastImage != null)
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    width: 120,
                    height: 240,
                    child: Image.file(
                      File(lastImage!.path),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: IconButton(
                  iconSize: 48,
                  onPressed: () async {
                    final image = await controller?.takePicture();

                    setState(() {
                      lastImage = image;
                    });
                  },
                  icon: const Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: UiBottomNavigationBar(
        index: 0,
        onTap: (index) {
          if (index == 0) return;

          Navigator.pushReplacementNamed(context, routeGallery);
        },
      ),
    );
  }

  @override
  void dispose() {
    controller?.dispose();

    super.dispose();
  }

  Future<void> _initCamera() async {
    cameras = await availableCameras();

    final cameraController =
        CameraController(cameras[0], ResolutionPreset.ultraHigh);

    await cameraController.initialize();

    setState(() {
      controller = cameraController;
    });
  }

  void _onNewCameraSelected(CameraDescription description) async {
    if (controller != null) {
      await controller!.dispose();
    }

    final CameraController cameraController = CameraController(
      description,
      ResolutionPreset.max,
      enableAudio: true,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );

    cameraController.addListener(() {
      if (mounted) {
        setState(() {
          controller = cameraController;
        });
      }
    });
  }
}
