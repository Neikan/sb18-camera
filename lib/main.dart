// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:app_camera/bloc/bloc_gallery/bloc_gallery.dart';
import 'package:app_camera/repositories/repository_gallery/repository_gallery_imp.dart';
import 'package:app_camera/ui/components/ui_app.dart';

void main() {
  final repositoryGallery = RepositoryGalleryImp();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<BlocGallery>(
          create: (_) => BlocGallery(repositoryGallery),
        ),
      ],
      child: const UiApp(),
    ),
  );
}
