// Flutter imports:
import 'package:flutter/material.dart';

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
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.camera),
          label: 'Camera',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.image),
          label: 'Images',
        ),
      ],
      onTap: onTap,
      currentIndex: index,
    );
  }
}
