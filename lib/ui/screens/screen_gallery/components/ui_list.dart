part of '../screen_gallery.dart';

class UiList extends StatelessWidget {
  const UiList({super.key});

  @override
  Widget build(BuildContext context) {
    final files = BlocProvider.of<BlocGallery>(context).state.files;

    if (files.isEmpty) return UiEmptyData(text: labelsGallery[keyContent]!);

    return ListView.builder(
      itemCount: files.length,
      itemBuilder: (_, index) {
        return SizedBox(
          height: 240,
          child: Image.file(
            File(files[index].path),
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
