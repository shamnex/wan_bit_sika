import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wan_bi_sika/src/common/route_animations.dart';
import 'package:wan_bi_sika/src/features/app/model/user_model.dart';
import 'package:wan_bi_sika/src/features/auth/screens/account_setup/setup_account_screen.dart';
import 'package:wan_bi_sika/src/features/auth/screens/login/login_screen.dart';
import 'package:wan_bi_sika/src/features/auth/screens/pin_code/setup_pin_code_screen.dart';

class AuthRoutes {
  static const String login = "/auth/login";
  static const String accountSetup = "/auth/setup";
  static const String setupPinCode = "/auth/pin";

  static Route<dynamic> configureRoutes(RouteSettings settings) {
    return SlideUpRoute(builder: (context) {
      return _widgetBuilder(settings, context);
    });
  }

  static Widget _widgetBuilder(RouteSettings settings, context) {
    switch (settings.name) {
      case login:
        return LoginScreen();
      case accountSetup:
        return AccountSetupScreen(args: settings.arguments);
      case setupPinCode:
        return SetupPinCodeScreen();
      default:
        return LoginScreen();
    }
  }
}

class AccountSetupScreenArgs {
  final User user;
  AccountSetupScreenArgs(this.user);
}
