import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wan_bi_sika/src/constants/paddings.dart';
import 'package:wan_bi_sika/src/features/auth/screens/pin_code/pin_input_bloc/pin_code_bloc.dart';
import 'package:wan_bi_sika/src/features/auth/screens/pin_code/pin_input_bloc/pin_code_state.dart';

class PinCircles extends StatelessWidget {
  const PinCircles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PinCodeBloc pinInputBloc = context.bloc();
    return BlocBuilder<PinCodeBloc, PinCodeState>(
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
    );
  }
}
