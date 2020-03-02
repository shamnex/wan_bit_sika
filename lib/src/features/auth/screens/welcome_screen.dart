import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wan_bi_sika/src/constants/icons.dart';
import 'package:wan_bi_sika/src/constants/paddings.dart';
import 'package:wan_bi_sika/src/core/widgets/buttons.dart';
import 'package:wan_bi_sika/src/core/widgets/snack_bar.dart';
import 'package:wan_bi_sika/src/core/widgets/staggered_animated_column.dart';
import 'package:wan_bi_sika/src/features/auth/screens/partials/terms_conditions.dart';

import 'bloc/login_bloc.dart';
import 'bloc/login_state.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: AppPaddings.bodyH,
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            AppSnacks.showSuccess(context, message: 'Logged In Successfully');
          },
          child: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
            return SafeArea(
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
                        onPressed: () {},
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
            );
          }),
        ),
      ),
    );
  }
}
