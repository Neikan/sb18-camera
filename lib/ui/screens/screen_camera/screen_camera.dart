// Dart imports:
import 'dart:async';
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:camera/camera.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:app_camera/bloc/bloc_gallery/bloc_gallery.dart';
import 'package:app_camera/bloc/bloc_gallery/bloc_gallery_event.dart';
import 'package:app_camera/consts/routes.dart';
import 'package:app_camera/ui/components/ui_bottom_navigation_bar.dart';
import 'package:app_camera/ui/components/ui_loader.dart';

part 'components/ui_button_take_photo.dart';
part 'components/ui_camera_preview.dart';
part 'components/ui_preview.dart';

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
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            UiCameraPreview(controller: controller),
            if (lastImage != null) UiPreview(file: lastImage!),
            UiButtonTakePhoto(onPressed: handleTakePhoto),
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

  void handleTakePhoto() {
    controller?.takePicture().then((image) {
      setState(() {
        lastImage = image;
      });

      context.read<BlocGallery>().add(BlocGalleryEventAdd(image));
    });
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
