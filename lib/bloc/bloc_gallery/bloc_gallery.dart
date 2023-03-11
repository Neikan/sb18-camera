// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:app_camera/bloc/bloc_gallery/bloc_gallery_event.dart';
import 'package:app_camera/bloc/bloc_gallery/bloc_gallery_state.dart';
import 'package:app_camera/repositories/repository_gallery/repository_gallery.dart';

class BlocGallery extends Bloc<BlocGalleryEvent, BlocGalleryState> {
  final RepositoryGallery _repositoryGallery;

  BlocGallery(this._repositoryGallery)
      : super(const BlocGalleryState(files: [])) {
    on<BlocGalleryEventAdd>(_add);
  }

  void _add(
    BlocGalleryEventAdd event,
    Emitter<BlocGalleryState> emit,
  ) async {
    _repositoryGallery.add(event.file);

    final files = _repositoryGallery.data;

    emit(state.copyWith(files: files));
  }
}
