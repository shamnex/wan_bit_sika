import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wan_bi_sika/src/constants/colors.dart';
import 'package:wan_bi_sika/src/constants/paddings.dart';
import 'package:wan_bi_sika/src/core/widgets/screen.dart';
import 'package:wan_bi_sika/src/features/auth/screens/pin_code/partials/pin_cicles.dart';
import 'package:wan_bi_sika/src/features/auth/screens/pin_code/partials/pin_key_pad.dart';
import 'package:wan_bi_sika/src/features/auth/screens/pin_code/pin_input_screen_bloc/pin_input_screen_bloc.dart';
import 'pin_input_bloc/pin_code_bloc.dart';
import 'pin_input_bloc/pin_code_state.dart';
import 'pin_input_bloc/pin_code_event.dart';
import 'pin_input_screen_bloc/pin_input_screen_bloc.dart';
import 'pin_input_screen_bloc/pin_input_screen_state.dart';
import 'pin_input_screen_bloc/pin_input_screen_event.dart';

class SetupPinCodeScreen extends StatefulWidget {
  const SetupPinCodeScreen({Key key}) : super(key: key);

  @override
  _SetupPinCodeScreenState createState() => _SetupPinCodeScreenState();
}

class _SetupPinCodeScreenState extends State<SetupPinCodeScreen> {
  int currentStep = 0;

  final pinInputBloc = PinCodeBloc();
  PinInputScreenBloc confirmBloc;

  @override
  void initState() {
    confirmBloc = context.bloc();
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
      child: BlocListener<PinInputScreenBloc, PinInputScreenState>(
        listener: (context, state) {
          if (state.verified) {
            Navigator.pop(context);
          }
        },
        child: BlocBuilder<PinInputScreenBloc, PinInputScreenState>(builder: (context, snapshot) {
          return Scaffold(
            backgroundColor: theme.backgroundColor,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: AppColors.primary.shade500,
              elevation: 0.0,
              actions: <Widget>[
                FlatButton(
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ),
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
                  state.maybeWhen(
                      pinChanged: (pin) {
                        if (pin.length == 4) {
                          confirmBloc.add(PinInputSuccess(state.pin));
                          if (!confirmBloc.state.verify) {
                            confirmBloc.add(VerifyPinInput());
                          }
                          pinInputBloc.add(PinCleared());
                        }
                      },
                      orElse: () {});
                },
                child: BlocBuilder<PinInputScreenBloc, PinInputScreenState>(builder: (context, state) {
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
                                  '${state.verify ? 'Verify' : 'Setup'} your Wan Bit Sika pin',
                                  style: textTheme.title.copyWith(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Text(
                                ' ${state.verify ? 'Confirm the ' : 'Enter a '}4 digit security code that will be used to unlock the Bit Wan Sika app and confirm all transations',
                                style: textTheme.body1.copyWith(
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 20),
                              PinCircles(),
                              if (state.error.isNotEmpty)
                                Padding(
                                  padding: AppPaddings.lV,
                                  child: Text(
                                    'Your security pin does not match',
                                    style: textTheme.body1.copyWith(color: Colors.yellow),
                                  ),
                                ),
                              PinKeyPad()
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
      ),
    );
  }
}
