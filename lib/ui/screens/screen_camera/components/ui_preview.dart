part of '../screen_camera.dart';

class UiPreview extends StatelessWidget {
  final XFile file;

  const UiPreview({
    super.key,
    required this.file,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
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
            File(file.path),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
