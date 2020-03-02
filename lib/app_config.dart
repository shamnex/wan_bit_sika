import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_scaffold/src/features/app/bloc/app_bloc.dart';
import 'package:flutter_scaffold/src/features/auth/bloc/auth_bloc.dart';
import 'package:flutter_scaffold/src/features/auth/bloc/auth_event.dart';
import 'package:provider/provider.dart';

import 'package:flutter_scaffold/src/service_locator.dart' as di;

class AppConfig extends StatelessWidget {
  final Widget app;
  AppConfig({
    this.app,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider<AppBloc>(create: (_) => di.sl.get<AppBloc>()),
        BlocProvider<AuthBloc>(create: (_) => di.sl.get<AuthBloc>()..add(BeginAuthentication())),
      ],
      child: app,
    );
  }
}
