// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'loading':
      return AuthLoading.fromJson(json);
    case 'authAuthenticated':
      return AuthAuthenticated.fromJson(json);
    case 'authUnAuthenticated':
      return AuthUnAuthenticated.fromJson(json);
    case 'authVerifyPin':
      return AuthVerifyPin.fromJson(json);

    default:
      throw FallThroughError();
  }
}

abstract class _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result authAuthenticated(),
    @required Result authUnAuthenticated(),
    @required Result authVerifyPin(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result authAuthenticated(),
    Result authUnAuthenticated(),
    Result authVerifyPin(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(AuthLoading value),
    @required Result authAuthenticated(AuthAuthenticated value),
    @required Result authUnAuthenticated(AuthUnAuthenticated value),
    @required Result authVerifyPin(AuthVerifyPin value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(AuthLoading value),
    Result authAuthenticated(AuthAuthenticated value),
    Result authUnAuthenticated(AuthUnAuthenticated value),
    Result authVerifyPin(AuthVerifyPin value),
    @required Result orElse(),
  });

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$AuthLoading implements AuthLoading {
  const _$AuthLoading();

  factory _$AuthLoading.fromJson(Map<String, dynamic> json) =>
      _$_$AuthLoadingFromJson(json);

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return other is AuthLoading;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result authAuthenticated(),
    @required Result authUnAuthenticated(),
    @required Result authVerifyPin(),
  }) {
    assert(loading != null);
    assert(authAuthenticated != null);
    assert(authUnAuthenticated != null);
    assert(authVerifyPin != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result authAuthenticated(),
    Result authUnAuthenticated(),
    Result authVerifyPin(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(AuthLoading value),
    @required Result authAuthenticated(AuthAuthenticated value),
    @required Result authUnAuthenticated(AuthUnAuthenticated value),
    @required Result authVerifyPin(AuthVerifyPin value),
  }) {
    assert(loading != null);
    assert(authAuthenticated != null);
    assert(authUnAuthenticated != null);
    assert(authVerifyPin != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(AuthLoading value),
    Result authAuthenticated(AuthAuthenticated value),
    Result authUnAuthenticated(AuthUnAuthenticated value),
    Result authVerifyPin(AuthVerifyPin value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$AuthLoadingToJson(this)..['runtimeType'] = 'loading';
  }
}

abstract class AuthLoading implements AuthState {
  const factory AuthLoading() = _$AuthLoading;

  factory AuthLoading.fromJson(Map<String, dynamic> json) =
      _$AuthLoading.fromJson;
}

@JsonSerializable()
class _$AuthAuthenticated implements AuthAuthenticated {
  const _$AuthAuthenticated();

  factory _$AuthAuthenticated.fromJson(Map<String, dynamic> json) =>
      _$_$AuthAuthenticatedFromJson(json);

  @override
  String toString() {
    return 'AuthState.authAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return other is AuthAuthenticated;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result authAuthenticated(),
    @required Result authUnAuthenticated(),
    @required Result authVerifyPin(),
  }) {
    assert(loading != null);
    assert(authAuthenticated != null);
    assert(authUnAuthenticated != null);
    assert(authVerifyPin != null);
    return authAuthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result authAuthenticated(),
    Result authUnAuthenticated(),
    Result authVerifyPin(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authAuthenticated != null) {
      return authAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(AuthLoading value),
    @required Result authAuthenticated(AuthAuthenticated value),
    @required Result authUnAuthenticated(AuthUnAuthenticated value),
    @required Result authVerifyPin(AuthVerifyPin value),
  }) {
    assert(loading != null);
    assert(authAuthenticated != null);
    assert(authUnAuthenticated != null);
    assert(authVerifyPin != null);
    return authAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(AuthLoading value),
    Result authAuthenticated(AuthAuthenticated value),
    Result authUnAuthenticated(AuthUnAuthenticated value),
    Result authVerifyPin(AuthVerifyPin value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authAuthenticated != null) {
      return authAuthenticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$AuthAuthenticatedToJson(this)
      ..['runtimeType'] = 'authAuthenticated';
  }
}

abstract class AuthAuthenticated implements AuthState {
  const factory AuthAuthenticated() = _$AuthAuthenticated;

  factory AuthAuthenticated.fromJson(Map<String, dynamic> json) =
      _$AuthAuthenticated.fromJson;
}

@JsonSerializable()
class _$AuthUnAuthenticated implements AuthUnAuthenticated {
  const _$AuthUnAuthenticated();

  factory _$AuthUnAuthenticated.fromJson(Map<String, dynamic> json) =>
      _$_$AuthUnAuthenticatedFromJson(json);

  @override
  String toString() {
    return 'AuthState.authUnAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return other is AuthUnAuthenticated;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result authAuthenticated(),
    @required Result authUnAuthenticated(),
    @required Result authVerifyPin(),
  }) {
    assert(loading != null);
    assert(authAuthenticated != null);
    assert(authUnAuthenticated != null);
    assert(authVerifyPin != null);
    return authUnAuthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result authAuthenticated(),
    Result authUnAuthenticated(),
    Result authVerifyPin(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authUnAuthenticated != null) {
      return authUnAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(AuthLoading value),
    @required Result authAuthenticated(AuthAuthenticated value),
    @required Result authUnAuthenticated(AuthUnAuthenticated value),
    @required Result authVerifyPin(AuthVerifyPin value),
  }) {
    assert(loading != null);
    assert(authAuthenticated != null);
    assert(authUnAuthenticated != null);
    assert(authVerifyPin != null);
    return authUnAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(AuthLoading value),
    Result authAuthenticated(AuthAuthenticated value),
    Result authUnAuthenticated(AuthUnAuthenticated value),
    Result authVerifyPin(AuthVerifyPin value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authUnAuthenticated != null) {
      return authUnAuthenticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$AuthUnAuthenticatedToJson(this)
      ..['runtimeType'] = 'authUnAuthenticated';
  }
}

abstract class AuthUnAuthenticated implements AuthState {
  const factory AuthUnAuthenticated() = _$AuthUnAuthenticated;

  factory AuthUnAuthenticated.fromJson(Map<String, dynamic> json) =
      _$AuthUnAuthenticated.fromJson;
}

@JsonSerializable()
class _$AuthVerifyPin implements AuthVerifyPin {
  const _$AuthVerifyPin();

  factory _$AuthVerifyPin.fromJson(Map<String, dynamic> json) =>
      _$_$AuthVerifyPinFromJson(json);

  @override
  String toString() {
    return 'AuthState.authVerifyPin()';
  }

  @override
  bool operator ==(dynamic other) {
    return other is AuthVerifyPin;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result authAuthenticated(),
    @required Result authUnAuthenticated(),
    @required Result authVerifyPin(),
  }) {
    assert(loading != null);
    assert(authAuthenticated != null);
    assert(authUnAuthenticated != null);
    assert(authVerifyPin != null);
    return authVerifyPin();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result authAuthenticated(),
    Result authUnAuthenticated(),
    Result authVerifyPin(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authVerifyPin != null) {
      return authVerifyPin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(AuthLoading value),
    @required Result authAuthenticated(AuthAuthenticated value),
    @required Result authUnAuthenticated(AuthUnAuthenticated value),
    @required Result authVerifyPin(AuthVerifyPin value),
  }) {
    assert(loading != null);
    assert(authAuthenticated != null);
    assert(authUnAuthenticated != null);
    assert(authVerifyPin != null);
    return authVerifyPin(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(AuthLoading value),
    Result authAuthenticated(AuthAuthenticated value),
    Result authUnAuthenticated(AuthUnAuthenticated value),
    Result authVerifyPin(AuthVerifyPin value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authVerifyPin != null) {
      return authVerifyPin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$AuthVerifyPinToJson(this)..['runtimeType'] = 'authVerifyPin';
  }
}

abstract class AuthVerifyPin implements AuthState {
  const factory AuthVerifyPin() = _$AuthVerifyPin;

  factory AuthVerifyPin.fromJson(Map<String, dynamic> json) =
      _$AuthVerifyPin.fromJson;
}
