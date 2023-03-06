// Package imports:
import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc_gallery_state.freezed.dart';

@freezed
class BlocGalleryState with _$BlocGalleryState {
  const factory BlocGalleryState({
    required List<XFile> files,
  }) = _BlocGalleryState;
}
