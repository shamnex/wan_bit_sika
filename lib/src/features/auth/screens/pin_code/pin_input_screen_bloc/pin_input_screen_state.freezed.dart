// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_input_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

abstract class _$PinInputScreenState {
  String get pin;
  String get confirmPin;
  String get error;
  bool get verified;
  bool get verify;

  PinInputScreenState copyWith(
      {String pin,
      String confirmPin,
      String error,
      bool verified,
      bool verify});
}

class _$_PinInputScreenState implements _PinInputScreenState {
  const _$_PinInputScreenState(
      {this.pin, this.confirmPin, this.error, this.verified, this.verify});

  @override
  final String pin;
  @override
  final String confirmPin;
  @override
  final String error;
  @override
  final bool verified;
  @override
  final bool verify;

  @override
  String toString() {
    return 'PinInputScreenState(pin: $pin, confirmPin: $confirmPin, error: $error, verified: $verified, verify: $verify)';
  }

  @override
  bool operator ==(dynamic other) {
    return other is _PinInputScreenState &&
        (identical(other.pin, pin) || other.pin == pin) &&
        (identical(other.confirmPin, confirmPin) ||
            other.confirmPin == confirmPin) &&
        (identical(other.error, error) || other.error == error) &&
        (identical(other.verified, verified) || other.verified == verified) &&
        (identical(other.verify, verify) || other.verify == verify);
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      pin.hashCode ^
      confirmPin.hashCode ^
      error.hashCode ^
      verified.hashCode ^
      verify.hashCode;

  @override
  _$_PinInputScreenState copyWith({
    Object pin = immutable,
    Object confirmPin = immutable,
    Object error = immutable,
    Object verified = immutable,
    Object verify = immutable,
  }) {
    return _$_PinInputScreenState(
      pin: pin == immutable ? this.pin : pin as String,
      confirmPin:
          confirmPin == immutable ? this.confirmPin : confirmPin as String,
      error: error == immutable ? this.error : error as String,
      verified: verified == immutable ? this.verified : verified as bool,
      verify: verify == immutable ? this.verify : verify as bool,
    );
  }
}

abstract class _PinInputScreenState implements PinInputScreenState {
  const factory _PinInputScreenState(
      {String pin,
      String confirmPin,
      String error,
      bool verified,
      bool verify}) = _$_PinInputScreenState;

  @override
  String get pin;
  @override
  String get confirmPin;
  @override
  String get error;
  @override
  bool get verified;
  @override
  bool get verify;

  @override
  _PinInputScreenState copyWith(
      {String pin,
      String confirmPin,
      String error,
      bool verified,
      bool verify});
}
