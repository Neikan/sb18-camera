// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_camera/consts/routes.dart';
import 'package:app_camera/ui/screens/screen_camera/screen_camera.dart';
import 'package:app_camera/ui/screens/screen_gallery/screen_gallery.dart';

Map<String, Widget Function(BuildContext _)> routes = {
  routeCamera: (_) => const ScreenCamera(),
  routeGallery: (_) => const ScreenGallery(),
};

Route<dynamic> generateRoute(RouteSettings settings) => MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) {
        final route = routes[settings.name]!;

        return route(context);
      },
    );
