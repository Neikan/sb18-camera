// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:app_camera/bloc/bloc_gallery/bloc_gallery.dart';
import 'package:app_camera/consts/keys.dart';
import 'package:app_camera/consts/routes.dart';
import 'package:app_camera/consts/translations.dart';
import 'package:app_camera/ui/components/ui_bottom_navigation_bar.dart';
import 'package:app_camera/ui/components/ui_data_empty.dart';
import 'package:app_camera/ui/components/ui_header.dart';

part 'components/ui_list.dart';

class ScreenGallery extends StatelessWidget {
  const ScreenGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHeader(title: labelsGallery[keyTitle]!),
      body: const SafeArea(
        child: UiList(),
      ),
      bottomNavigationBar: UiBottomNavigationBar(
        index: 1,
        onTap: (index) {
          if (index == 1) return;

          Navigator.pushReplacementNamed(context, routeCamera);
        },
      ),
    );
  }
}
