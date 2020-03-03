import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wan_bi_sika/src/constants/colors.dart';
import 'package:wan_bi_sika/src/constants/paddings.dart';
import 'package:wan_bi_sika/src/core/widgets/buttons.dart';
import 'package:wan_bi_sika/src/core/widgets/screen.dart';
import 'package:wan_bi_sika/src/features/app/bloc/app_bloc.dart';
import 'package:wan_bi_sika/src/features/app/bloc/app_event.dart';
import 'package:wan_bi_sika/src/features/app/bloc/app_state.dart';
import 'package:wan_bi_sika/src/features/auth/routes/auth_routes.dart';
import 'package:wan_bi_sika/src/features/auth/screens/pin_code/pin_input_screen_bloc/pin_input_screen_bloc.dart';
import 'package:wan_bi_sika/src/features/auth/screens/pin_code/pin_input_screen_bloc/pin_input_screen_state.dart';
import 'package:wan_bi_sika/src/features/auth/screens/pin_code/pin_input_screen_bloc/pin_input_screen_event.dart';

class AccountSetupScreen extends StatefulWidget {
  final AccountSetupScreenArgs args;
  const AccountSetupScreen({Key key, @required this.args})
      : assert(args != null),
        super(key: key);

  @override
  _AccountSetupScreenState createState() => _AccountSetupScreenState();
}

class _AccountSetupScreenState extends State<AccountSetupScreen> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final theme = Theme.of(context);
    final user = widget.args.user;

    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: AppPaddings.bodyH,
        child: BlocListener<AppBloc, AppState>(
          listener: (context, state) {
            // state.when(
            //     intial: () {},
            //     loading: () {},
            //     success: (user) {
            //       // AppSnacks.showSuccess(context, message: 'Logged In Successfully');
            //     });
          },
          child: BlocBuilder<AppBloc, AppState>(builder: (context, state) {
            return AppScreen(
              child: SafeArea(
                child: SizedBox.expand(
                  child: BlocBuilder<PinInputScreenBloc, PinInputScreenState>(builder: (context, pinInputState) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 16),
                        Text(
                          'Setup your account Wan bi Sika Account',
                          style: textTheme.title.copyWith(
                            fontWeight: FontWeight.w300,
                            color: AppColors.primary,
                          ),
                        ),
                        SizedBox(height: 16),
                        Stepper(
                          onStepTapped: (index) {
                            setState(() {
                              currentStep = index;
                            });
                          },
                          currentStep: currentStep,
                          controlsBuilder: (BuildContext context,
                              {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
                            return currentStep != 0
                                ? SizedBox()
                                : Padding(
                                    padding: const EdgeInsets.only(top: 16.0),
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: SizedBox(
                                        width: 150,
                                        height: 40,
                                        child: AppButton(
                                          onPressed: () {
                                            setState(() {
                                              currentStep++;
                                            });
                                          },
                                          child: Text(
                                            'Next',
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ));
                          },
                          steps: [
                            Step(
                              title: RichText(
                                text: TextSpan(
                                  style: textTheme.body1,
                                  children: [
                                    TextSpan(text: "Authentication"),
                                  ],
                                ),
                              ),
                              isActive: currentStep == 0,
                              subtitle: Text(
                                "with Gooogle Sign-In",
                                style: textTheme.caption,
                              ),
                              state: StepState.complete,
                              content: Container(
                                padding: AppPaddings.mA,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                    border: Border.all(
                                      color: AppColors.line,
                                    )),
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      backgroundColor: AppColors.primary.shade900,
                                      child: Text(
                                        user.firstName.substring(0, 1),
                                        style: textTheme.body2.copyWith(
                                          fontWeight: FontWeight.w800,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Flexible(
                                      child: RichText(
                                        maxLines: 2,
                                        text: TextSpan(
                                          style: textTheme.body1.copyWith(
                                            height: 1.3,
                                          ),
                                          children: [
                                            TextSpan(text: "${user.firstName} ${user.lastName} \n"),
                                            TextSpan(
                                              text: "${user.email}",
                                              style: textTheme.body1.copyWith(
                                                color: AppColors.primary,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Step(
                              isActive: currentStep == 1,
                              state: pinInputState.verified ? StepState.complete : StepState.editing,
                              title: const Text('Pin Setup'),
                              content: Builder(builder: (context) {
                                if (pinInputState.verified) {
                                  return Align(
                                    alignment: Alignment.centerLeft,
                                    child: SizedBox(
                                      width: 150,
                                      height: 40,
                                      child: AppButton.white(
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 20,
                                            spreadRadius: 4,
                                            color: AppColors.secondary.shade300.withOpacity(.4),
                                          )
                                        ],
                                        onPressed: () {
                                          context.bloc<PinInputScreenBloc>().add(ClearPinInput());
                                        },
                                        child: Text(
                                          'Remove Pincode',
                                          style: TextStyle(color: Colors.red, fontSize: 12),
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                return AppButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed(AuthRoutes.setupPinCode);
                                  },
                                  child: Text(
                                    'Setup Pincode',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                );
                              }),
                            ),
                          ],
                        ),
                        const Spacer(),
                        if (pinInputState.verified)
                          AppButton(
                            onPressed: () {
                              context.bloc<AppBloc>().add(
                                    UserLoggedIn(
                                      pin: pinInputState.pin,
                                      user: context.bloc<AppBloc>().state.currentUser,
                                    ),
                                  );
                              Navigator.of(context, rootNavigator: true).pop(context);
                            },
                            child: Text(
                              'Complete Setup',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        SizedBox(height: 32)
                      ],
                    );
                  }),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
