import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wan_bi_sika/src/constants/colors.dart';
import 'package:wan_bi_sika/src/core/widgets/app_loading.dart';
import 'package:wan_bi_sika/src/features/app/bloc/app_bloc.dart';
import 'package:wan_bi_sika/src/features/app/bloc/app_state.dart';
import 'package:wan_bi_sika/src/features/auth/bloc/auth_bloc.dart';
import 'package:wan_bi_sika/src/features/auth/bloc/auth_state.dart';
import 'package:wan_bi_sika/src/features/auth/screens/auth_home_screen.dart';
import 'package:wan_bi_sika/src/features/home/screens/home_base_screen.dart';

class AppBaseScreen extends StatelessWidget {
  const AppBaseScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: BlocBuilder<AppBloc, AppState>(builder: (context, appState) {
        return BlocBuilder<AuthBloc, AuthState>(
          builder: (context, authState) {
            if (authState is AuthLoading) {
              return Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'WAN BIT SIKA',
                    style: TextStyle(color: AppColors.primary),
                  ),
                  AppSpinner(color: AppColors.secondary.shade50),
                ],
              ));
            }
            if (authState is AuthUnAuthenticated) {
              return AuthBaseScreen();
            }
            return HomeBaseScreen();
          },
        );
      }),
    );
  }
}
