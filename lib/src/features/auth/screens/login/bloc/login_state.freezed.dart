// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

LoginState _$LoginStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'intial':
      return Initial.fromJson(json);
    case 'loading':
      return Loading.fromJson(json);
    case 'success':
      return Success.fromJson(json);

    default:
      throw FallThroughError();
  }
}

abstract class _$LoginState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result intial(),
    @required Result loading(),
    @required Result success(User user),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result intial(),
    Result loading(),
    Result success(User user),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result intial(Initial value),
    @required Result loading(Loading value),
    @required Result success(Success value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result intial(Initial value),
    Result loading(Loading value),
    Result success(Success value),
    @required Result orElse(),
  });

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$Initial implements Initial {
  const _$Initial();

  factory _$Initial.fromJson(Map<String, dynamic> json) =>
      _$_$InitialFromJson(json);

  @override
  String toString() {
    return 'LoginState.intial()';
  }

  @override
  bool operator ==(dynamic other) {
    return other is Initial;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result intial(),
    @required Result loading(),
    @required Result success(User user),
  }) {
    assert(intial != null);
    assert(loading != null);
    assert(success != null);
    return intial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result intial(),
    Result loading(),
    Result success(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (intial != null) {
      return intial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result intial(Initial value),
    @required Result loading(Loading value),
    @required Result success(Success value),
  }) {
    assert(intial != null);
    assert(loading != null);
    assert(success != null);
    return intial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result intial(Initial value),
    Result loading(Loading value),
    Result success(Success value),
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
    return _$_$InitialToJson(this)..['runtimeType'] = 'intial';
  }
}

abstract class Initial implements LoginState {
  const factory Initial() = _$Initial;

  factory Initial.fromJson(Map<String, dynamic> json) = _$Initial.fromJson;
}

@JsonSerializable()
class _$Loading implements Loading {
  const _$Loading();

  factory _$Loading.fromJson(Map<String, dynamic> json) =>
      _$_$LoadingFromJson(json);

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return other is Loading;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result intial(),
    @required Result loading(),
    @required Result success(User user),
  }) {
    assert(intial != null);
    assert(loading != null);
    assert(success != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result intial(),
    Result loading(),
    Result success(User user),
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
    @required Result intial(Initial value),
    @required Result loading(Loading value),
    @required Result success(Success value),
  }) {
    assert(intial != null);
    assert(loading != null);
    assert(success != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result intial(Initial value),
    Result loading(Loading value),
    Result success(Success value),
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
    return _$_$LoadingToJson(this)..['runtimeType'] = 'loading';
  }
}

abstract class Loading implements LoginState {
  const factory Loading() = _$Loading;

  factory Loading.fromJson(Map<String, dynamic> json) = _$Loading.fromJson;
}

@JsonSerializable()
class _$Success implements Success {
  const _$Success({this.user});

  factory _$Success.fromJson(Map<String, dynamic> json) =>
      _$_$SuccessFromJson(json);

  @override
  final User user;

  @override
  String toString() {
    return 'LoginState.success(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return other is Success &&
        (identical(other.user, user) || other.user == user);
  }

  @override
  int get hashCode => runtimeType.hashCode ^ user.hashCode;

  @override
  _$Success copyWith({
    Object user = immutable,
  }) {
    return _$Success(
      user: user == immutable ? this.user : user as User,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result intial(),
    @required Result loading(),
    @required Result success(User user),
  }) {
    assert(intial != null);
    assert(loading != null);
    assert(success != null);
    return success(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result intial(),
    Result loading(),
    Result success(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result intial(Initial value),
    @required Result loading(Loading value),
    @required Result success(Success value),
  }) {
    assert(intial != null);
    assert(loading != null);
    assert(success != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result intial(Initial value),
    Result loading(Loading value),
    Result success(Success value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$SuccessToJson(this)..['runtimeType'] = 'success';
  }
}

abstract class Success implements LoginState {
  const factory Success({User user}) = _$Success;

  factory Success.fromJson(Map<String, dynamic> json) = _$Success.fromJson;

  User get user;

  Success copyWith({User user});
}
