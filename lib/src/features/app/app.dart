import 'package:wan_bi_sika/src/core/widgets/screen.dart';
import 'package:wan_bi_sika/src/features/app/bloc/app_bloc.dart';
import 'package:wan_bi_sika/src/features/app/bloc/app_state.dart';
import 'package:wan_bi_sika/src/features/app/model/app_theme.dart';
import 'package:wan_bi_sika/src/features/app/screens/app_base_screen.dart';
import 'package:wan_bi_sika/src/features/auth/bloc/bloc.dart';
import 'package:wan_bi_sika/src/features/onboarding/screens/onboard_screen.dart';
import 'package:wan_bi_sika/src/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AppBloc, AppState>(
          listener: (context, state) {},
        ),
      ],
      child: BlocBuilder<AppBloc, AppState>(builder: (context, appState) {
        return MaterialApp(
          showSemanticsDebugger: false,
          theme: appThemeData[appState.theme],
          onGenerateRoute: AppRoutes.router,
          home: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeWhen(
                authVerifyPin: () {
                  Navigator.of(context).pushNamed(AppRoutes.verifyPinCode);
                },
                orElse: () {},
              );
            },
            child: Material(
              child: AnimatedSwitcher(
                  switchInCurve: Curves.easeIn,
                  switchOutCurve: Curves.easeIn,
                  duration: Duration(milliseconds: 400),
                  child: appState.currentUser != null ? const AppBaseScreen() : const OnboardingScreen()),
            ),
          ),
        );
      }),
    );
  }
}
