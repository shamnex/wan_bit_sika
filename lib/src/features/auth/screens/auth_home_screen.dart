import 'package:wan_bi_sika/src/features/app/bloc/app_bloc.dart';
import 'package:wan_bi_sika/src/features/app/bloc/app_state.dart';
import 'package:wan_bi_sika/src/features/auth/bloc/bloc.dart';
import 'package:wan_bi_sika/src/features/auth/routes/auth_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wan_bi_sika/src/features/auth/screens/pin_code/pin_input_screen_bloc/pin_input_screen_bloc.dart';

import '../../../service_locator.dart';
import 'login/bloc/login_bloc.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

class AuthBaseScreen extends StatelessWidget {
  const AuthBaseScreen();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => !await _navigatorKey.currentState.maybePop(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<LoginBloc>(create: (context) => LoginBloc(sl())),
          BlocProvider<PinInputScreenBloc>(create: (context) => PinInputScreenBloc()),
        ],
        child: Material(
          child: Navigator(
            key: _navigatorKey,
            onGenerateRoute: AuthRoutes.configureRoutes,
          ),
        ),
      ),
    );
  }
}
