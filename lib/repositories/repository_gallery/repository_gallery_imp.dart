// Package imports:
import 'package:camera/camera.dart';

// Project imports:
import 'package:app_camera/repositories/repository_gallery/repository_gallery.dart';

class RepositoryGalleryImp extends RepositoryGallery {
  RepositoryGalleryImp();

  List<XFile> _state = [];

  @override
  List<XFile> get data => _state;

  @override
  void add(XFile file) {
    _state = [..._state, file];
  }
}
