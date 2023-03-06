// Flutter imports:
import 'dart:io';

import 'package:app_camera/ui/components/ui_data_empty.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_camera/consts/keys.dart';
import 'package:app_camera/consts/routes.dart';
import 'package:app_camera/consts/translations.dart';
import 'package:app_camera/ui/components/ui_bottom_navigation_bar.dart';
import 'package:app_camera/ui/components/ui_header.dart';

class ScreenGallery extends StatelessWidget {
  const ScreenGallery({super.key});

  @override
  Widget build(BuildContext context) {
    const images = <File>[];

    return Scaffold(
      appBar: UiHeader(title: labelsGallery[keyTitle]!),
      body: SafeArea(
        child: images.isEmpty
            ? UiEmptyData(text: labelsGallery[keyContent]!)
            : const SizedBox(),
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
