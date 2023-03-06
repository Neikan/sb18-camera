part of '../screen_camera.dart';

class UiButtonTakePhoto extends StatelessWidget {
  final VoidCallback onPressed;

  const UiButtonTakePhoto({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: IconButton(
          iconSize: 48,
          onPressed: onPressed,
          icon: const Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
