import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_scaffold/src/features/app/bloc/app_bloc.dart';
import 'package:flutter_scaffold/src/features/app/bloc/app_state.dart';
import 'package:flutter_scaffold/src/features/auth/bloc/auth_bloc.dart';
import 'package:flutter_scaffold/src/features/auth/bloc/auth_state.dart';
import 'package:flutter_scaffold/src/features/auth/screens/welcome_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(builder: (context, appState) {
      return BlocBuilder<AuthBloc, AuthState>(
        builder: (context, authState) {
          if (authState is AuthLoading) {
            return Center(child: Text('Tracka'));
          }
          if (authState is AuthUnAuthenticated) {
            return WelcomeScreen();
          }
          return Center(child: Text('HOME SCREEN'));
        },
      );
    });
  }
}