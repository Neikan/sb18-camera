// Package imports:
import 'package:camera/camera.dart';

abstract class BlocGalleryEvent {}

class BlocGalleryEventAdd extends BlocGalleryEvent {
  final XFile file;

  BlocGalleryEventAdd(this.file);
}
