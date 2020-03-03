// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_code_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

abstract class _$PinCodeEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result pinEntered(int pin),
    @required Result pinDeleted(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pinEntered(int pin),
    Result pinDeleted(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pinEntered(PinEntered value),
    @required Result pinDeleted(PinDeleted value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pinEntered(PinEntered value),
    Result pinDeleted(PinDeleted value),
    @required Result orElse(),
  });
}

class _$PinEntered implements PinEntered {
  const _$PinEntered(this.pin);

  @override
  final int pin;

  @override
  String toString() {
    return 'PinCodeEvent.pinEntered(pin: $pin)';
  }

  @override
  bool operator ==(dynamic other) {
    return other is PinEntered &&
        (identical(other.pin, pin) || other.pin == pin);
  }

  @override
  int get hashCode => runtimeType.hashCode ^ pin.hashCode;

  @override
  _$PinEntered copyWith({
    Object pin = immutable,
  }) {
    return _$PinEntered(
      pin == immutable ? this.pin : pin as int,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result pinEntered(int pin),
    @required Result pinDeleted(),
  }) {
    assert(pinEntered != null);
    assert(pinDeleted != null);
    return pinEntered(pin);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pinEntered(int pin),
    Result pinDeleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pinEntered != null) {
      return pinEntered(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pinEntered(PinEntered value),
    @required Result pinDeleted(PinDeleted value),
  }) {
    assert(pinEntered != null);
    assert(pinDeleted != null);
    return pinEntered(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pinEntered(PinEntered value),
    Result pinDeleted(PinDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pinEntered != null) {
      return pinEntered(this);
    }
    return orElse();
  }
}

abstract class PinEntered implements PinCodeEvent {
  const factory PinEntered(int pin) = _$PinEntered;

  int get pin;

  PinEntered copyWith({int pin});
}

class _$PinDeleted implements PinDeleted {
  const _$PinDeleted();

  @override
  String toString() {
    return 'PinCodeEvent.pinDeleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return other is PinDeleted;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result pinEntered(int pin),
    @required Result pinDeleted(),
  }) {
    assert(pinEntered != null);
    assert(pinDeleted != null);
    return pinDeleted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pinEntered(int pin),
    Result pinDeleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pinDeleted != null) {
      return pinDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pinEntered(PinEntered value),
    @required Result pinDeleted(PinDeleted value),
  }) {
    assert(pinEntered != null);
    assert(pinDeleted != null);
    return pinDeleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pinEntered(PinEntered value),
    Result pinDeleted(PinDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pinDeleted != null) {
      return pinDeleted(this);
    }
    return orElse();
  }
}

abstract class PinDeleted implements PinCodeEvent {
  const factory PinDeleted() = _$PinDeleted;
}
