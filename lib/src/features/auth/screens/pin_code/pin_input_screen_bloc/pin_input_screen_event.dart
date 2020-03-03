import 'package:meta/meta.dart';
part 'pin_input_screen_event.freezed.dart';

@immutable
abstract class PinInputScreenEvent with _$PinInputScreenEvent {
  const factory PinInputScreenEvent.pinChanged(String pin) = PinInputSuccess;
  const factory PinInputScreenEvent.verify() = VerifyPinInput;
  const factory PinInputScreenEvent.clear() = ClearPinInput;
}
