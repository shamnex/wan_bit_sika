// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_input_screen_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

abstract class _$PinInputScreenEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result pinChanged(String pin),
    @required Result verify(),
    @required Result clear(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pinChanged(String pin),
    Result verify(),
    Result clear(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pinChanged(PinInputSuccess value),
    @required Result verify(VerifyPinInput value),
    @required Result clear(ClearPinInput value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pinChanged(PinInputSuccess value),
    Result verify(VerifyPinInput value),
    Result clear(ClearPinInput value),
    @required Result orElse(),
  });
}

class _$PinInputSuccess implements PinInputSuccess {
  const _$PinInputSuccess(this.pin);

  @override
  final String pin;

  @override
  String toString() {
    return 'PinInputScreenEvent.pinChanged(pin: $pin)';
  }

  @override
  bool operator ==(dynamic other) {
    return other is PinInputSuccess &&
        (identical(other.pin, pin) || other.pin == pin);
  }

  @override
  int get hashCode => runtimeType.hashCode ^ pin.hashCode;

  @override
  _$PinInputSuccess copyWith({
    Object pin = immutable,
  }) {
    return _$PinInputSuccess(
      pin == immutable ? this.pin : pin as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result pinChanged(String pin),
    @required Result verify(),
    @required Result clear(),
  }) {
    assert(pinChanged != null);
    assert(verify != null);
    assert(clear != null);
    return pinChanged(pin);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pinChanged(String pin),
    Result verify(),
    Result clear(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pinChanged != null) {
      return pinChanged(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pinChanged(PinInputSuccess value),
    @required Result verify(VerifyPinInput value),
    @required Result clear(ClearPinInput value),
  }) {
    assert(pinChanged != null);
    assert(verify != null);
    assert(clear != null);
    return pinChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pinChanged(PinInputSuccess value),
    Result verify(VerifyPinInput value),
    Result clear(ClearPinInput value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pinChanged != null) {
      return pinChanged(this);
    }
    return orElse();
  }
}

abstract class PinInputSuccess implements PinInputScreenEvent {
  const factory PinInputSuccess(String pin) = _$PinInputSuccess;

  String get pin;

  PinInputSuccess copyWith({String pin});
}

class _$VerifyPinInput implements VerifyPinInput {
  const _$VerifyPinInput();

  @override
  String toString() {
    return 'PinInputScreenEvent.verify()';
  }

  @override
  bool operator ==(dynamic other) {
    return other is VerifyPinInput;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result pinChanged(String pin),
    @required Result verify(),
    @required Result clear(),
  }) {
    assert(pinChanged != null);
    assert(verify != null);
    assert(clear != null);
    return verify();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pinChanged(String pin),
    Result verify(),
    Result clear(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verify != null) {
      return verify();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pinChanged(PinInputSuccess value),
    @required Result verify(VerifyPinInput value),
    @required Result clear(ClearPinInput value),
  }) {
    assert(pinChanged != null);
    assert(verify != null);
    assert(clear != null);
    return verify(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pinChanged(PinInputSuccess value),
    Result verify(VerifyPinInput value),
    Result clear(ClearPinInput value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verify != null) {
      return verify(this);
    }
    return orElse();
  }
}

abstract class VerifyPinInput implements PinInputScreenEvent {
  const factory VerifyPinInput() = _$VerifyPinInput;
}

class _$ClearPinInput implements ClearPinInput {
  const _$ClearPinInput();

  @override
  String toString() {
    return 'PinInputScreenEvent.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return other is ClearPinInput;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result pinChanged(String pin),
    @required Result verify(),
    @required Result clear(),
  }) {
    assert(pinChanged != null);
    assert(verify != null);
    assert(clear != null);
    return clear();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pinChanged(String pin),
    Result verify(),
    Result clear(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pinChanged(PinInputSuccess value),
    @required Result verify(VerifyPinInput value),
    @required Result clear(ClearPinInput value),
  }) {
    assert(pinChanged != null);
    assert(verify != null);
    assert(clear != null);
    return clear(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pinChanged(PinInputSuccess value),
    Result verify(VerifyPinInput value),
    Result clear(ClearPinInput value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class ClearPinInput implements PinInputScreenEvent {
  const factory ClearPinInput() = _$ClearPinInput;
}
