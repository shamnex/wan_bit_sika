import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wan_bi_sika/src/constants/colors.dart';
import 'package:wan_bi_sika/src/constants/paddings.dart';
import 'package:wan_bi_sika/src/core/widgets/screen.dart';
import 'package:wan_bi_sika/src/features/app/bloc/app_bloc.dart';
import 'package:wan_bi_sika/src/features/app/bloc/app_state.dart';
import 'package:wan_bi_sika/src/features/auth/bloc/auth_bloc.dart';
import 'package:wan_bi_sika/src/features/auth/bloc/bloc.dart';
import 'package:wan_bi_sika/src/features/auth/screens/pin_code/partials/pin_cicles.dart';
import 'package:wan_bi_sika/src/features/auth/screens/pin_code/partials/pin_key_pad.dart';
import 'pin_input_bloc/pin_code_bloc.dart';
import 'pin_input_bloc/pin_code_state.dart';
import 'pin_input_bloc/pin_code_event.dart';
import 'pin_input_screen_bloc/pin_input_screen_bloc.dart';
import 'pin_input_screen_bloc/pin_input_screen_state.dart';
import 'pin_input_screen_bloc/pin_input_screen_event.dart';

class EnterPinCodeScreen extends StatefulWidget {
  const EnterPinCodeScreen({Key key}) : super(key: key);

  @override
  _EnterPinCodeScreenState createState() => _EnterPinCodeScreenState();
}

class _EnterPinCodeScreenState extends State<EnterPinCodeScreen> {
  int currentStep = 0;

  final pinInputBloc = PinCodeBloc();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    pinInputBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final theme = Theme.of(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: pinInputBloc),
      ],
      child: BlocBuilder<AppBloc, AppState>(builder: (context, appState) {
        return Scaffold(
          backgroundColor: theme.backgroundColor,
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                transform: GradientRotation(1.0472),
                stops: [0, 0.5, 0.5, 1],
                colors: [
                  AppColors.primary.shade500,
                  AppColors.primary.shade500,
                  AppColors.primary.shade400,
                  AppColors.primary.shade400,
                ],
              ),
            ),
            height: MediaQuery.of(context).size.height,
            child: BlocListener<PinCodeBloc, PinCodeState>(
              listener: (context, state) {
                state.maybeWhen(pinChanged: (pin) {}, orElse: () {});
              },
              child: BlocBuilder<PinCodeBloc, PinCodeState>(builder: (context, state) {
                return AppScreen(
                  child: SafeArea(
                    child: Padding(
                      padding: AppPaddings.bodyH,
                      child: SizedBox.expand(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: AppPaddings.mV,
                              child: Text(
                                'Welcome Back',
                                style: textTheme.title.copyWith(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Text(
                              'Enter your Wan Bit Sika pin to continue',
                              style: textTheme.body1.copyWith(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 20),
                            PinCircles(),
                            if (state.pin.length == 4 && state.pin != appState.pin)
                              Padding(
                                padding: AppPaddings.lV,
                                child: Text(
                                  'Incorrect Pin',
                                  style: textTheme.body1.copyWith(color: Colors.yellow),
                                ),
                              ),
                            PinKeyPad(),
                            SizedBox(
                              child: FlatButton(
                                child: Text('Sign out'),
                                onPressed: () {
                                  context.bloc<AuthBloc>().add(Deauthenticate());
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        );
      }),
    );
  }
}
