import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wan_bi_sika/src/constants/colors.dart';
import 'package:wan_bi_sika/src/constants/paddings.dart';
import 'package:wan_bi_sika/src/core/widgets/screen.dart';
import 'package:wan_bi_sika/src/features/app/bloc/app_bloc.dart';
import 'package:wan_bi_sika/src/features/app/bloc/app_state.dart';
import 'pin_input_bloc/pin_code_bloc.dart';
import 'pin_input_bloc/pin_code_state.dart';
import 'pin_input_bloc/pin_code_event.dart';

class PinCodeScreen extends StatefulWidget {
  const PinCodeScreen({Key key}) : super(key: key);

  @override
  _PinCodeScreenState createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
  //TODO CREATE BLOC FOR THIS
  int currentStep = 0;
  bool verifyPin = false;

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
      child: Scaffold(
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
              state.maybeWhen(pinChanged: (pin) {}, orElse: () {});
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
                              'Setup your Wan Bit Sika pin',
                              style: textTheme.title.copyWith(
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            'Enter a 4 digit security code that will be used to unlock the Bit Wan Sika app and confirm all transations',
                            style: textTheme.body1.copyWith(
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20),
                          BlocBuilder<PinCodeBloc, PinCodeState>(
                            builder: (BuildContext context, state) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ...List.generate(pinInputBloc.maxLength, (index) {
                                    return Container(
                                      margin: AppPaddings.mH,
                                      height: 16,
                                      width: 16,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: state.pin.length > index ? Colors.white : Colors.transparent,
                                        border: Border.all(color: Colors.white, width: 1),
                                      ),
                                    );
                                  })
                                ],
                              );
                            },
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: const [
                                      PinInput(1),
                                      PinInput(2),
                                      PinInput(3),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: const [
                                      PinInput(4),
                                      PinInput(5),
                                      PinInput(6),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: const [
                                      PinInput(7),
                                      PinInput(8),
                                      PinInput(9),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      const Spacer(),
                                      Expanded(child: PinInput(0)),
                                      Expanded(
                                        child: FlatButton(
                                          child: Icon(
                                            Icons.backspace,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                            context.bloc<PinCodeBloc>().add(PinDeleted());
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
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
      ),
    );
  }
}

class PinInput extends StatelessWidget {
  final int input;
  const PinInput(
    this.input, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        context.bloc<PinCodeBloc>().add(PinEntered(input));
      },
      child: Text(
        '$input',
        style: Theme.of(context).textTheme.body2.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Colors.white,
            ),
      ),
    );
  }
}
