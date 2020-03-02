import 'package:wan_bi_sika/src/features/auth/screens/login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthRoutes {
  static const String login = "/auth/login";
  static const String signup = "/auth/signup";

  static Route<dynamic> configureRoutes(RouteSettings settings) {
    return CupertinoPageRoute(builder: (context) {
      return _widgetBuilder(settings, context);
    });
  }

  static Widget _widgetBuilder(RouteSettings settings, context) {
    switch (settings.name) {
      case login:
        return LoginScreen();
      default:
        return LoginScreen();
    }
  }
}
