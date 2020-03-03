import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wan_bi_sika/src/constants/icons.dart';
import 'package:wan_bi_sika/src/constants/paddings.dart';
import 'package:wan_bi_sika/src/core/widgets/buttons.dart';
import 'package:wan_bi_sika/src/core/widgets/screen.dart';
import 'package:wan_bi_sika/src/core/widgets/staggered_animated_column.dart';
import 'package:wan_bi_sika/src/features/app/bloc/app_bloc.dart';
import 'package:wan_bi_sika/src/features/app/bloc/app_event.dart';
import 'package:wan_bi_sika/src/features/auth/routes/auth_routes.dart';
import 'package:wan_bi_sika/src/features/auth/screens/partials/terms_conditions.dart';
import 'bloc/login_bloc.dart';
import 'bloc/login_event.dart';
import 'bloc/login_state.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print("here");
    final textTheme = Theme.of(context).textTheme;
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: AppPaddings.bodyH,
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            state.when(
                intial: () {},
                loading: () {},
                success: (user) {
                  context.bloc<AppBloc>().add(UserLoggedIn(user));
                  Navigator.of(context).pushReplacementNamed(
                    AuthRoutes.accountSetup,
                    arguments: AccountSetupScreenArgs(user),
                  );
                });
          },
          child: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
            return AppScreen(
              loading: state.maybeWhen<bool>(loading: () => true, orElse: () => false),
              child: SafeArea(
                child: SizedBox.expand(
                  child: StaggeredAnimatedColumn(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'GET STARTED',
                        style: textTheme.display1.copyWith(
                          fontWeight: FontWeight.w900,
                          color: theme.brightness == Brightness.light ? Colors.black87 : Colors.white,
                        ),
                      ),
                      SizedBox(height: 16),
                      AppButton(
                          onPressed: () {
                            context.bloc<LoginBloc>().add(LoginWithGoogle());
                          },
                          child: Stack(
                            fit: StackFit.expand,
                            children: <Widget>[
                              Center(
                                child: Text(
                                  'Sign In With Google',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Icon(
                                  AppIcons.google,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )),
                      SizedBox(height: 16),
                      TermsAndCondition(),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
