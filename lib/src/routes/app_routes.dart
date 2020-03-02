import 'package:flutter_scaffold/src/features/auth/screens/auth_home_screen.dart';
import 'package:flutter_scaffold/src/features/home/home_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = "/home";
  static const String auth = "/auth";

  static Route<dynamic> router(RouteSettings settings) {
    return CupertinoPageRoute(builder: (context) {
      return _widgetBuilder(settings, context);
    });
  }

  static Widget _widgetBuilder(RouteSettings settings, context) {
    switch (settings.name) {
      case home:
        return HomeScreen();
      case auth:
        return AuthHomeScreen();

      default:
        return HomeScreen();
    }
  }
}
