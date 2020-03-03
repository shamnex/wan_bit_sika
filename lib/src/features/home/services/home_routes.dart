import 'package:flutter/cupertino.dart';
import 'package:wan_bi_sika/src/common/route_animations.dart';
import 'package:wan_bi_sika/src/features/home/screens/home_screen_scaffold.dart';

class HomeRoutes {
  static const String home = "/";

  static Route<dynamic> configureRoutes(RouteSettings settings) {
    return FadeInRoute(builder: (context) {
      return _widgetBuilder(settings, context);
    });
  }

  static Widget _widgetBuilder(RouteSettings settings, context) {
    switch (settings.name) {
      case home:
        return HomeScreen();

      default:
        return HomeScreen();
    }
  }
}
