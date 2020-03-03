import 'package:meta/meta.dart';
part 'pin_input_screen_state.freezed.dart';

@immutable
abstract class PinInputScreenState with _$PinInputScreenState {
  const factory PinInputScreenState({
    int pin,
    int confirmPin,
  }) = _PinInputScreenState;

  const factory PinInputScreenState.initial() = PinInputScreenIntial;
  const factory PinInputScreenState.error(String errorr) = PinInputScreenError;
  const factory PinInputScreenState.success() = PinInputScreenSuccess;
}
