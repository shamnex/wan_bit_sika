// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_input_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

abstract class _$PinInputScreenState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(int pin, int confirmPin), {
    @required Result initial(),
    @required Result error(String errorr),
    @required Result success(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(int pin, int confirmPin), {
    Result initial(),
    Result error(String errorr),
    Result success(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_PinInputScreenState value), {
    @required Result initial(PinInputScreenIntial value),
    @required Result error(PinInputScreenError value),
    @required Result success(PinInputScreenSuccess value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_PinInputScreenState value), {
    Result initial(PinInputScreenIntial value),
    Result error(PinInputScreenError value),
    Result success(PinInputScreenSuccess value),
    @required Result orElse(),
  });
}

class _$_PinInputScreenState implements _PinInputScreenState {
  const _$_PinInputScreenState({this.pin, this.confirmPin});

  @override
  final int pin;
  @override
  final int confirmPin;

  @override
  String toString() {
    return 'PinInputScreenState(pin: $pin, confirmPin: $confirmPin)';
  }

  @override
  bool operator ==(dynamic other) {
    return other is _PinInputScreenState &&
        (identical(other.pin, pin) || other.pin == pin) &&
        (identical(other.confirmPin, confirmPin) ||
            other.confirmPin == confirmPin);
  }

  @override
  int get hashCode => runtimeType.hashCode ^ pin.hashCode ^ confirmPin.hashCode;

  @override
  _$_PinInputScreenState copyWith({
    Object pin = immutable,
    Object confirmPin = immutable,
  }) {
    return _$_PinInputScreenState(
      pin: pin == immutable ? this.pin : pin as int,
      confirmPin: confirmPin == immutable ? this.confirmPin : confirmPin as int,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(int pin, int confirmPin), {
    @required Result initial(),
    @required Result error(String errorr),
    @required Result success(),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(error != null);
    assert(success != null);
    return $default(pin, confirmPin);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(int pin, int confirmPin), {
    Result initial(),
    Result error(String errorr),
    Result success(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(pin, confirmPin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_PinInputScreenState value), {
    @required Result initial(PinInputScreenIntial value),
    @required Result error(PinInputScreenError value),
    @required Result success(PinInputScreenSuccess value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(error != null);
    assert(success != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_PinInputScreenState value), {
    Result initial(PinInputScreenIntial value),
    Result error(PinInputScreenError value),
    Result success(PinInputScreenSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _PinInputScreenState implements PinInputScreenState {
  const factory _PinInputScreenState({int pin, int confirmPin}) =
      _$_PinInputScreenState;

  int get pin;
  int get confirmPin;

  _PinInputScreenState copyWith({int pin, int confirmPin});
}

class _$PinInputScreenIntial implements PinInputScreenIntial {
  const _$PinInputScreenIntial();

  @override
  String toString() {
    return 'PinInputScreenState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return other is PinInputScreenIntial;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(int pin, int confirmPin), {
    @required Result initial(),
    @required Result error(String errorr),
    @required Result success(),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(error != null);
    assert(success != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(int pin, int confirmPin), {
    Result initial(),
    Result error(String errorr),
    Result success(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_PinInputScreenState value), {
    @required Result initial(PinInputScreenIntial value),
    @required Result error(PinInputScreenError value),
    @required Result success(PinInputScreenSuccess value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(error != null);
    assert(success != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_PinInputScreenState value), {
    Result initial(PinInputScreenIntial value),
    Result error(PinInputScreenError value),
    Result success(PinInputScreenSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PinInputScreenIntial implements PinInputScreenState {
  const factory PinInputScreenIntial() = _$PinInputScreenIntial;
}

class _$PinInputScreenError implements PinInputScreenError {
  const _$PinInputScreenError(this.errorr);

  @override
  final String errorr;

  @override
  String toString() {
    return 'PinInputScreenState.error(errorr: $errorr)';
  }

  @override
  bool operator ==(dynamic other) {
    return other is PinInputScreenError &&
        (identical(other.errorr, errorr) || other.errorr == errorr);
  }

  @override
  int get hashCode => runtimeType.hashCode ^ errorr.hashCode;

  @override
  _$PinInputScreenError copyWith({
    Object errorr = immutable,
  }) {
    return _$PinInputScreenError(
      errorr == immutable ? this.errorr : errorr as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(int pin, int confirmPin), {
    @required Result initial(),
    @required Result error(String errorr),
    @required Result success(),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(error != null);
    assert(success != null);
    return error(errorr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(int pin, int confirmPin), {
    Result initial(),
    Result error(String errorr),
    Result success(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(errorr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_PinInputScreenState value), {
    @required Result initial(PinInputScreenIntial value),
    @required Result error(PinInputScreenError value),
    @required Result success(PinInputScreenSuccess value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(error != null);
    assert(success != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_PinInputScreenState value), {
    Result initial(PinInputScreenIntial value),
    Result error(PinInputScreenError value),
    Result success(PinInputScreenSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PinInputScreenError implements PinInputScreenState {
  const factory PinInputScreenError(String errorr) = _$PinInputScreenError;

  String get errorr;

  PinInputScreenError copyWith({String errorr});
}

class _$PinInputScreenSuccess implements PinInputScreenSuccess {
  const _$PinInputScreenSuccess();

  @override
  String toString() {
    return 'PinInputScreenState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return other is PinInputScreenSuccess;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(int pin, int confirmPin), {
    @required Result initial(),
    @required Result error(String errorr),
    @required Result success(),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(error != null);
    assert(success != null);
    return success();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(int pin, int confirmPin), {
    Result initial(),
    Result error(String errorr),
    Result success(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_PinInputScreenState value), {
    @required Result initial(PinInputScreenIntial value),
    @required Result error(PinInputScreenError value),
    @required Result success(PinInputScreenSuccess value),
  }) {
    assert($default != null);
    assert(initial != null);
    assert(error != null);
    assert(success != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_PinInputScreenState value), {
    Result initial(PinInputScreenIntial value),
    Result error(PinInputScreenError value),
    Result success(PinInputScreenSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PinInputScreenSuccess implements PinInputScreenState {
  const factory PinInputScreenSuccess() = _$PinInputScreenSuccess;
}
