import 'package:wan_bi_sika/src/common/route_animations.dart';
import 'package:wan_bi_sika/src/core/widgets/screen.dart';
import 'package:wan_bi_sika/src/features/app/screens/app_base_screen.dart';
import 'package:wan_bi_sika/src/features/auth/screens/auth_home_screen.dart';
import 'package:wan_bi_sika/src/features/auth/screens/pin_code/enter_pin_code_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = "/home";
  static const String auth = "/auth";
  static const String verifyPinCode = "/verifyPinCode";

  static Route<dynamic> router(RouteSettings settings) {
    return FadeInRoute(builder: (context) {
      return _widgetBuilder(settings, context);
    });
  }

  static Widget _widgetBuilder(RouteSettings settings, context) {
    switch (settings.name) {
      case home:
        return AppBaseScreen();
      case auth:
        return AuthBaseScreen();
      case verifyPinCode:
        return EnterPinCodeScreen();
      default:
        return AppBaseScreen();
    }
  }
}
