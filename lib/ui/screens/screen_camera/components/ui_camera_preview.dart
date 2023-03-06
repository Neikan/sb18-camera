part of '../screen_camera.dart';

class UiCameraPreview extends StatelessWidget {
  final CameraController? controller;

  const UiCameraPreview({
    super.key,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final deviceRatio = size.width / size.height;

    return controller?.value.isInitialized == true
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
        : const UiLoader();
  }
}
