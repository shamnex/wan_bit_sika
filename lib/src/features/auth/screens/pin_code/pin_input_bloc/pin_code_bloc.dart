import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'pin_code_event.dart';
import 'pin_code_state.dart';

class PinCodeBloc extends Bloc<PinCodeEvent, PinCodeState> {
  int maxLength = 4;
  @override
  PinCodeState get initialState => PinInitial(pin: "");

  @override
  Stream<PinCodeState> mapEventToState(
    PinCodeEvent event,
  ) async* {
    yield event.when<PinCodeState>(
      pinEntered: (int pin) =>
          state.pin.length == maxLength ? PinChanged(pin: '') : PinChanged(pin: '${state.pin}$pin'),
      pinDeleted: () {
        if (state.pin.length > 0) {
          return PinChanged(pin: state.pin.substring(0, state.pin.length - 1));
        }
        return PinChanged(pin: state.pin);
      },
    );
  }
}
