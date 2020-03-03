import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'pin_input_screen_event.dart';
import 'pin_input_screen_state.dart';

class PinInputScreenBloc extends Bloc<PinInputScreenEvent, PinInputScreenState> {
  @override
  PinInputScreenState get initialState => PinInputScreenState.initial();

  @override
  Stream<PinInputScreenState> mapEventToState(
    PinInputScreenEvent event,
  ) async* {}
}
