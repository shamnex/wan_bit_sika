import 'package:meta/meta.dart';
part 'pin_input_screen_event.freezed.dart';

@immutable
abstract class PinInputScreenEvent with _$PinInputScreenEvent {
  const factory PinInputScreenEvent.pinChanged() = PinInputScreenIntial;
  const factory PinInputScreenEvent.confirmPinChanged(String errorr) = PinInputScreenError;
}
