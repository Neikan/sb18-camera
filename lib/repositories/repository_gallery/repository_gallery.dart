// Package imports:
import 'package:camera/camera.dart';

abstract class RepositoryGallery {
  const RepositoryGallery();

  List<XFile> get data;

  void add(XFile file);
}
