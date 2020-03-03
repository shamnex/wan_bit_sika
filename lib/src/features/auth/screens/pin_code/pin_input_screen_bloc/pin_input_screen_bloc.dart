import 'dart:async';

import 'package:bloc/bloc.dart';

import 'pin_input_screen_event.dart';
import 'pin_input_screen_state.dart';

class PinInputScreenBloc extends Bloc<PinInputScreenEvent, PinInputScreenState> {
  @override
  PinInputScreenState get initialState => PinInputScreenState(
        pin: '',
        confirmPin: '',
        error: '',
        verify: false,
        verified: false,
      );

  @override
  Stream<PinInputScreenState> mapEventToState(
    PinInputScreenEvent event,
  ) async* {
    yield event.when<PinInputScreenState>(
        pinChanged: (pin) {
          if (state.verify) {
            if (pin.length == state.pin.length) {
              if (pin != state.pin) {
                return state.copyWith(
                  confirmPin: pin,
                  verified: false,
                  verify: false,
                  error: 'Pin doesn\'t match',
                );
              }
              return state.copyWith(confirmPin: pin, verified: true, error: '');
            }
            return state.copyWith(confirmPin: pin);
          }
          return state.copyWith(pin: pin);
        },
        verify: () => state.copyWith(verify: true),
        clear: () => state.copyWith(confirmPin: '', pin: '', verified: false, verify: false));
  }
}
