import 'package:flutter_scaffold/src/features/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/login_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    LoginBloc loginBloc = context.bloc();

    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final AppBloc appBloc = context.bloc();

    return Scaffold(
      body: Form(
        key: _formKey,
        child: BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {},
            child: Center(
              child: Text('Login Screen'),
            )),
      ),
    );
  }

  _login() {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState.validate()) {}
  }
}
