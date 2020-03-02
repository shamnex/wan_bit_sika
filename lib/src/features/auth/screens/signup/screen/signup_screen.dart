import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_scaffold/src/features/auth/screens/signup/bloc/sign_up_bloc.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  SignUpBloc signupBloc;
  @override
  void initState() {
    signupBloc = BlocProvider.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      body: Form(
        key: _formKey,
        child: BlocListener<SignUpBloc, SignUpState>(
            listener: (context, state) {},
            child: Center(
              child: Text('Signup Screen'),
            )),
      ),
    );
  }

  _signup() {
    if (_formKey.currentState.validate()) {
      FocusScope.of(context).unfocus();
      //
    }
  }
}
