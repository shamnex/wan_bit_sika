import 'package:wan_bi_sika/src/features/auth/routes/auth_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wan_bi_sika/src/features/auth/screens/signup/bloc/sign_up_bloc.dart';

import '../../../service_locator.dart';
import 'login/bloc/login_bloc.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

class AuthHomeScreen extends StatelessWidget {
  const AuthHomeScreen();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => !await _navigatorKey.currentState.maybePop(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<LoginBloc>(create: (context) => LoginBloc(sl())),
          BlocProvider<SignUpBloc>(create: (context) => SignUpBloc(sl())),
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
