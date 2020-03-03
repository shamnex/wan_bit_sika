// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_code_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

PinCodeState _$PinCodeStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'intial':
      return PinInitial.fromJson(json);
    case 'pinChanged':
      return PinChanged.fromJson(json);

    default:
      throw FallThroughError();
  }
}

abstract class _$PinCodeState {
  String get pin;

  PinCodeState copyWith({String pin});

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result intial(String pin),
    @required Result pinChanged(String pin),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result intial(String pin),
    Result pinChanged(String pin),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result intial(PinInitial value),
    @required Result pinChanged(PinChanged value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result intial(PinInitial value),
    Result pinChanged(PinChanged value),
    @required Result orElse(),
  });

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$PinInitial implements PinInitial {
  const _$PinInitial({this.pin});

  factory _$PinInitial.fromJson(Map<String, dynamic> json) =>
      _$_$PinInitialFromJson(json);

  @override
  final String pin;

  @override
  String toString() {
    return 'PinCodeState.intial(pin: $pin)';
  }

  @override
  bool operator ==(dynamic other) {
    return other is PinInitial &&
        (identical(other.pin, pin) || other.pin == pin);
  }

  @override
  int get hashCode => runtimeType.hashCode ^ pin.hashCode;

  @override
  _$PinInitial copyWith({
    Object pin = immutable,
  }) {
    return _$PinInitial(
      pin: pin == immutable ? this.pin : pin as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result intial(String pin),
    @required Result pinChanged(String pin),
  }) {
    assert(intial != null);
    assert(pinChanged != null);
    return intial(pin);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result intial(String pin),
    Result pinChanged(String pin),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (intial != null) {
      return intial(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result intial(PinInitial value),
    @required Result pinChanged(PinChanged value),
  }) {
    assert(intial != null);
    assert(pinChanged != null);
    return intial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result intial(PinInitial value),
    Result pinChanged(PinChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (intial != null) {
      return intial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$PinInitialToJson(this)..['runtimeType'] = 'intial';
  }
}

abstract class PinInitial implements PinCodeState {
  const factory PinInitial({String pin}) = _$PinInitial;

  factory PinInitial.fromJson(Map<String, dynamic> json) =
      _$PinInitial.fromJson;

  @override
  String get pin;

  @override
  PinInitial copyWith({String pin});
}

@JsonSerializable()
class _$PinChanged implements PinChanged {
  const _$PinChanged({this.pin});

  factory _$PinChanged.fromJson(Map<String, dynamic> json) =>
      _$_$PinChangedFromJson(json);

  @override
  final String pin;

  @override
  String toString() {
    return 'PinCodeState.pinChanged(pin: $pin)';
  }

  @override
  bool operator ==(dynamic other) {
    return other is PinChanged &&
        (identical(other.pin, pin) || other.pin == pin);
  }

  @override
  int get hashCode => runtimeType.hashCode ^ pin.hashCode;

  @override
  _$PinChanged copyWith({
    Object pin = immutable,
  }) {
    return _$PinChanged(
      pin: pin == immutable ? this.pin : pin as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result intial(String pin),
    @required Result pinChanged(String pin),
  }) {
    assert(intial != null);
    assert(pinChanged != null);
    return pinChanged(pin);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result intial(String pin),
    Result pinChanged(String pin),
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
    @required Result intial(PinInitial value),
    @required Result pinChanged(PinChanged value),
  }) {
    assert(intial != null);
    assert(pinChanged != null);
    return pinChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result intial(PinInitial value),
    Result pinChanged(PinChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pinChanged != null) {
      return pinChanged(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$PinChangedToJson(this)..['runtimeType'] = 'pinChanged';
  }
}

abstract class PinChanged implements PinCodeState {
  const factory PinChanged({String pin}) = _$PinChanged;

  factory PinChanged.fromJson(Map<String, dynamic> json) =
      _$PinChanged.fromJson;

  @override
  String get pin;

  @override
  PinChanged copyWith({String pin});
}
