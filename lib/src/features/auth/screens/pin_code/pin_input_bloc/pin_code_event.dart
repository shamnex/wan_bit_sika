import 'package:meta/meta.dart';
part 'pin_code_event.freezed.dart';

@immutable
abstract class PinCodeEvent with _$PinCodeEvent {
  const factory PinCodeEvent.pinEntered(int pin) = PinEntered;
  const factory PinCodeEvent.pinDeleted() = PinDeleted;
}
