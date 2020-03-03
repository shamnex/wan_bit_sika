// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_input_screen_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

abstract class _$PinInputScreenEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result pinChanged(),
    @required Result confirmPinChanged(String errorr),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pinChanged(),
    Result confirmPinChanged(String errorr),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pinChanged(PinInputScreenIntial value),
    @required Result confirmPinChanged(PinInputScreenError value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pinChanged(PinInputScreenIntial value),
    Result confirmPinChanged(PinInputScreenError value),
    @required Result orElse(),
  });
}

class _$PinInputScreenIntial implements PinInputScreenIntial {
  const _$PinInputScreenIntial();

  @override
  String toString() {
    return 'PinInputScreenEvent.pinChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return other is PinInputScreenIntial;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result pinChanged(),
    @required Result confirmPinChanged(String errorr),
  }) {
    assert(pinChanged != null);
    assert(confirmPinChanged != null);
    return pinChanged();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pinChanged(),
    Result confirmPinChanged(String errorr),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pinChanged != null) {
      return pinChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pinChanged(PinInputScreenIntial value),
    @required Result confirmPinChanged(PinInputScreenError value),
  }) {
    assert(pinChanged != null);
    assert(confirmPinChanged != null);
    return pinChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pinChanged(PinInputScreenIntial value),
    Result confirmPinChanged(PinInputScreenError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pinChanged != null) {
      return pinChanged(this);
    }
    return orElse();
  }
}

abstract class PinInputScreenIntial implements PinInputScreenEvent {
  const factory PinInputScreenIntial() = _$PinInputScreenIntial;
}

class _$PinInputScreenError implements PinInputScreenError {
  const _$PinInputScreenError(this.errorr);

  @override
  final String errorr;

  @override
  String toString() {
    return 'PinInputScreenEvent.confirmPinChanged(errorr: $errorr)';
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
  Result when<Result extends Object>({
    @required Result pinChanged(),
    @required Result confirmPinChanged(String errorr),
  }) {
    assert(pinChanged != null);
    assert(confirmPinChanged != null);
    return confirmPinChanged(errorr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pinChanged(),
    Result confirmPinChanged(String errorr),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmPinChanged != null) {
      return confirmPinChanged(errorr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pinChanged(PinInputScreenIntial value),
    @required Result confirmPinChanged(PinInputScreenError value),
  }) {
    assert(pinChanged != null);
    assert(confirmPinChanged != null);
    return confirmPinChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pinChanged(PinInputScreenIntial value),
    Result confirmPinChanged(PinInputScreenError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmPinChanged != null) {
      return confirmPinChanged(this);
    }
    return orElse();
  }
}

abstract class PinInputScreenError implements PinInputScreenEvent {
  const factory PinInputScreenError(String errorr) = _$PinInputScreenError;

  String get errorr;

  PinInputScreenError copyWith({String errorr});
}
