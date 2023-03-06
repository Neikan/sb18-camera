// Flutter imports:
import 'package:app_camera/ui/components/ui_text.dart';
import 'package:flutter/material.dart';

class UiEmptyData extends StatelessWidget {
  final String text;

  const UiEmptyData({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiText(
            text: text,
            padding: const EdgeInsets.all(16),
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}
