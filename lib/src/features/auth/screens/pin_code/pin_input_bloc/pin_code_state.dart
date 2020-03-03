import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pin_code_state.freezed.dart';
part 'pin_code_state.g.dart';

@immutable
abstract class PinCodeState with _$PinCodeState {
  const factory PinCodeState.intial({String pin}) = PinInitial;
  const factory PinCodeState.pinChanged({String pin}) = PinChanged;

  factory PinCodeState.fromJson(Map<String, dynamic> json) => _$PinCodeStateFromJson(json);
}
