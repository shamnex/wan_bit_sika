import 'package:meta/meta.dart';
part 'pin_input_screen_state.freezed.dart';

@immutable
abstract class PinInputScreenState with _$PinInputScreenState {
  const factory PinInputScreenState({
    String pin,
    String confirmPin,
    String error,
    bool verified,
    bool verify,
  }) = _PinInputScreenState;
}
