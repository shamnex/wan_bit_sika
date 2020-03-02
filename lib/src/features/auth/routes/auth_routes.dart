import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wan_bi_sika/src/features/auth/screens/account_setup/setup_account_screen.dart';
import 'package:wan_bi_sika/src/features/auth/screens/login/login_screen.dart';

class AuthRoutes {
  static const String login = "/auth/login";
  static const String accountSetup = "/auth/setup";

  static Route<dynamic> configureRoutes(RouteSettings settings) {
    return CupertinoPageRoute(builder: (context) {
      return _widgetBuilder(settings, context);
    });
  }

  static Widget _widgetBuilder(RouteSettings settings, context) {
    switch (settings.name) {
      case login:
        return LoginScreen();
      case accountSetup:
        return LoginScreen();
      default:
        return AccountSetupScreen();
    }
  }
}
