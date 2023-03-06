// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_camera/consts/routes.dart';
import 'package:app_camera/consts/translations.dart';

class UiBottomNavigationBar extends StatelessWidget {
  final int index;
  final void Function(int)? onTap;

  const UiBottomNavigationBar({
    super.key,
    required this.index,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.camera),
          label: labelsBottomBar[routeCamera],
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.image),
          label: labelsBottomBar[routeGallery],
        ),
      ],
      onTap: onTap,
      currentIndex: index,
    );
  }
}
