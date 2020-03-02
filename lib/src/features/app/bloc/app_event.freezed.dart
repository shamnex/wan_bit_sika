// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

AppEvent _$AppEventFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'hasOnboarded':
      return HasOnboarded.fromJson(json);
    case 'userLoggedIn':
      return UserLoggedIn.fromJson(json);
    case 'userLoggedOut':
      return UserLoggedOut.fromJson(json);
    case 'walkThroughComplete':
      return HasCompletedWalkThrough.fromJson(json);
    case 'themChanged':
      return ThemeChanged.fromJson(json);

    default:
      throw FallThroughError();
  }
}

abstract class _$AppEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result hasOnboarded(),
    @required Result userLoggedIn(User user),
    @required Result userLoggedOut(),
    @required Result walkThroughComplete(),
    @required Result themChanged(AppTheme them),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result hasOnboarded(),
    Result userLoggedIn(User user),
    Result userLoggedOut(),
    Result walkThroughComplete(),
    Result themChanged(AppTheme them),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result hasOnboarded(HasOnboarded value),
    @required Result userLoggedIn(UserLoggedIn value),
    @required Result userLoggedOut(UserLoggedOut value),
    @required Result walkThroughComplete(HasCompletedWalkThrough value),
    @required Result themChanged(ThemeChanged value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result hasOnboarded(HasOnboarded value),
    Result userLoggedIn(UserLoggedIn value),
    Result userLoggedOut(UserLoggedOut value),
    Result walkThroughComplete(HasCompletedWalkThrough value),
    Result themChanged(ThemeChanged value),
    @required Result orElse(),
  });

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$HasOnboarded implements HasOnboarded {
  const _$HasOnboarded();

  factory _$HasOnboarded.fromJson(Map<String, dynamic> json) =>
      _$_$HasOnboardedFromJson(json);

  @override
  String toString() {
    return 'AppEvent.hasOnboarded()';
  }

  @override
  bool operator ==(dynamic other) {
    return other is HasOnboarded;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result hasOnboarded(),
    @required Result userLoggedIn(User user),
    @required Result userLoggedOut(),
    @required Result walkThroughComplete(),
    @required Result themChanged(AppTheme them),
  }) {
    assert(hasOnboarded != null);
    assert(userLoggedIn != null);
    assert(userLoggedOut != null);
    assert(walkThroughComplete != null);
    assert(themChanged != null);
    return hasOnboarded();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result hasOnboarded(),
    Result userLoggedIn(User user),
    Result userLoggedOut(),
    Result walkThroughComplete(),
    Result themChanged(AppTheme them),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasOnboarded != null) {
      return hasOnboarded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result hasOnboarded(HasOnboarded value),
    @required Result userLoggedIn(UserLoggedIn value),
    @required Result userLoggedOut(UserLoggedOut value),
    @required Result walkThroughComplete(HasCompletedWalkThrough value),
    @required Result themChanged(ThemeChanged value),
  }) {
    assert(hasOnboarded != null);
    assert(userLoggedIn != null);
    assert(userLoggedOut != null);
    assert(walkThroughComplete != null);
    assert(themChanged != null);
    return hasOnboarded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result hasOnboarded(HasOnboarded value),
    Result userLoggedIn(UserLoggedIn value),
    Result userLoggedOut(UserLoggedOut value),
    Result walkThroughComplete(HasCompletedWalkThrough value),
    Result themChanged(ThemeChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasOnboarded != null) {
      return hasOnboarded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$HasOnboardedToJson(this)..['runtimeType'] = 'hasOnboarded';
  }
}

abstract class HasOnboarded implements AppEvent {
  const factory HasOnboarded() = _$HasOnboarded;

  factory HasOnboarded.fromJson(Map<String, dynamic> json) =
      _$HasOnboarded.fromJson;
}

@JsonSerializable()
class _$UserLoggedIn implements UserLoggedIn {
  const _$UserLoggedIn({this.user});

  factory _$UserLoggedIn.fromJson(Map<String, dynamic> json) =>
      _$_$UserLoggedInFromJson(json);

  @override
  final User user;

  @override
  String toString() {
    return 'AppEvent.userLoggedIn(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return other is UserLoggedIn &&
        (identical(other.user, user) || other.user == user);
  }

  @override
  int get hashCode => runtimeType.hashCode ^ user.hashCode;

  @override
  _$UserLoggedIn copyWith({
    Object user = immutable,
  }) {
    return _$UserLoggedIn(
      user: user == immutable ? this.user : user as User,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result hasOnboarded(),
    @required Result userLoggedIn(User user),
    @required Result userLoggedOut(),
    @required Result walkThroughComplete(),
    @required Result themChanged(AppTheme them),
  }) {
    assert(hasOnboarded != null);
    assert(userLoggedIn != null);
    assert(userLoggedOut != null);
    assert(walkThroughComplete != null);
    assert(themChanged != null);
    return userLoggedIn(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result hasOnboarded(),
    Result userLoggedIn(User user),
    Result userLoggedOut(),
    Result walkThroughComplete(),
    Result themChanged(AppTheme them),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userLoggedIn != null) {
      return userLoggedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result hasOnboarded(HasOnboarded value),
    @required Result userLoggedIn(UserLoggedIn value),
    @required Result userLoggedOut(UserLoggedOut value),
    @required Result walkThroughComplete(HasCompletedWalkThrough value),
    @required Result themChanged(ThemeChanged value),
  }) {
    assert(hasOnboarded != null);
    assert(userLoggedIn != null);
    assert(userLoggedOut != null);
    assert(walkThroughComplete != null);
    assert(themChanged != null);
    return userLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result hasOnboarded(HasOnboarded value),
    Result userLoggedIn(UserLoggedIn value),
    Result userLoggedOut(UserLoggedOut value),
    Result walkThroughComplete(HasCompletedWalkThrough value),
    Result themChanged(ThemeChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userLoggedIn != null) {
      return userLoggedIn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UserLoggedInToJson(this)..['runtimeType'] = 'userLoggedIn';
  }
}

abstract class UserLoggedIn implements AppEvent {
  const factory UserLoggedIn({User user}) = _$UserLoggedIn;

  factory UserLoggedIn.fromJson(Map<String, dynamic> json) =
      _$UserLoggedIn.fromJson;

  User get user;

  UserLoggedIn copyWith({User user});
}

@JsonSerializable()
class _$UserLoggedOut implements UserLoggedOut {
  const _$UserLoggedOut();

  factory _$UserLoggedOut.fromJson(Map<String, dynamic> json) =>
      _$_$UserLoggedOutFromJson(json);

  @override
  String toString() {
    return 'AppEvent.userLoggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return other is UserLoggedOut;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result hasOnboarded(),
    @required Result userLoggedIn(User user),
    @required Result userLoggedOut(),
    @required Result walkThroughComplete(),
    @required Result themChanged(AppTheme them),
  }) {
    assert(hasOnboarded != null);
    assert(userLoggedIn != null);
    assert(userLoggedOut != null);
    assert(walkThroughComplete != null);
    assert(themChanged != null);
    return userLoggedOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result hasOnboarded(),
    Result userLoggedIn(User user),
    Result userLoggedOut(),
    Result walkThroughComplete(),
    Result themChanged(AppTheme them),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userLoggedOut != null) {
      return userLoggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result hasOnboarded(HasOnboarded value),
    @required Result userLoggedIn(UserLoggedIn value),
    @required Result userLoggedOut(UserLoggedOut value),
    @required Result walkThroughComplete(HasCompletedWalkThrough value),
    @required Result themChanged(ThemeChanged value),
  }) {
    assert(hasOnboarded != null);
    assert(userLoggedIn != null);
    assert(userLoggedOut != null);
    assert(walkThroughComplete != null);
    assert(themChanged != null);
    return userLoggedOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result hasOnboarded(HasOnboarded value),
    Result userLoggedIn(UserLoggedIn value),
    Result userLoggedOut(UserLoggedOut value),
    Result walkThroughComplete(HasCompletedWalkThrough value),
    Result themChanged(ThemeChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userLoggedOut != null) {
      return userLoggedOut(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UserLoggedOutToJson(this)..['runtimeType'] = 'userLoggedOut';
  }
}

abstract class UserLoggedOut implements AppEvent {
  const factory UserLoggedOut() = _$UserLoggedOut;

  factory UserLoggedOut.fromJson(Map<String, dynamic> json) =
      _$UserLoggedOut.fromJson;
}

@JsonSerializable()
class _$HasCompletedWalkThrough implements HasCompletedWalkThrough {
  const _$HasCompletedWalkThrough();

  factory _$HasCompletedWalkThrough.fromJson(Map<String, dynamic> json) =>
      _$_$HasCompletedWalkThroughFromJson(json);

  @override
  String toString() {
    return 'AppEvent.walkThroughComplete()';
  }

  @override
  bool operator ==(dynamic other) {
    return other is HasCompletedWalkThrough;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result hasOnboarded(),
    @required Result userLoggedIn(User user),
    @required Result userLoggedOut(),
    @required Result walkThroughComplete(),
    @required Result themChanged(AppTheme them),
  }) {
    assert(hasOnboarded != null);
    assert(userLoggedIn != null);
    assert(userLoggedOut != null);
    assert(walkThroughComplete != null);
    assert(themChanged != null);
    return walkThroughComplete();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result hasOnboarded(),
    Result userLoggedIn(User user),
    Result userLoggedOut(),
    Result walkThroughComplete(),
    Result themChanged(AppTheme them),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (walkThroughComplete != null) {
      return walkThroughComplete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result hasOnboarded(HasOnboarded value),
    @required Result userLoggedIn(UserLoggedIn value),
    @required Result userLoggedOut(UserLoggedOut value),
    @required Result walkThroughComplete(HasCompletedWalkThrough value),
    @required Result themChanged(ThemeChanged value),
  }) {
    assert(hasOnboarded != null);
    assert(userLoggedIn != null);
    assert(userLoggedOut != null);
    assert(walkThroughComplete != null);
    assert(themChanged != null);
    return walkThroughComplete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result hasOnboarded(HasOnboarded value),
    Result userLoggedIn(UserLoggedIn value),
    Result userLoggedOut(UserLoggedOut value),
    Result walkThroughComplete(HasCompletedWalkThrough value),
    Result themChanged(ThemeChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (walkThroughComplete != null) {
      return walkThroughComplete(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$HasCompletedWalkThroughToJson(this)
      ..['runtimeType'] = 'walkThroughComplete';
  }
}

abstract class HasCompletedWalkThrough implements AppEvent {
  const factory HasCompletedWalkThrough() = _$HasCompletedWalkThrough;

  factory HasCompletedWalkThrough.fromJson(Map<String, dynamic> json) =
      _$HasCompletedWalkThrough.fromJson;
}

@JsonSerializable()
class _$ThemeChanged implements ThemeChanged {
  const _$ThemeChanged({this.them});

  factory _$ThemeChanged.fromJson(Map<String, dynamic> json) =>
      _$_$ThemeChangedFromJson(json);

  @override
  final AppTheme them;

  @override
  String toString() {
    return 'AppEvent.themChanged(them: $them)';
  }

  @override
  bool operator ==(dynamic other) {
    return other is ThemeChanged &&
        (identical(other.them, them) || other.them == them);
  }

  @override
  int get hashCode => runtimeType.hashCode ^ them.hashCode;

  @override
  _$ThemeChanged copyWith({
    Object them = immutable,
  }) {
    return _$ThemeChanged(
      them: them == immutable ? this.them : them as AppTheme,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result hasOnboarded(),
    @required Result userLoggedIn(User user),
    @required Result userLoggedOut(),
    @required Result walkThroughComplete(),
    @required Result themChanged(AppTheme them),
  }) {
    assert(hasOnboarded != null);
    assert(userLoggedIn != null);
    assert(userLoggedOut != null);
    assert(walkThroughComplete != null);
    assert(themChanged != null);
    return themChanged(them);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result hasOnboarded(),
    Result userLoggedIn(User user),
    Result userLoggedOut(),
    Result walkThroughComplete(),
    Result themChanged(AppTheme them),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (themChanged != null) {
      return themChanged(them);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result hasOnboarded(HasOnboarded value),
    @required Result userLoggedIn(UserLoggedIn value),
    @required Result userLoggedOut(UserLoggedOut value),
    @required Result walkThroughComplete(HasCompletedWalkThrough value),
    @required Result themChanged(ThemeChanged value),
  }) {
    assert(hasOnboarded != null);
    assert(userLoggedIn != null);
    assert(userLoggedOut != null);
    assert(walkThroughComplete != null);
    assert(themChanged != null);
    return themChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result hasOnboarded(HasOnboarded value),
    Result userLoggedIn(UserLoggedIn value),
    Result userLoggedOut(UserLoggedOut value),
    Result walkThroughComplete(HasCompletedWalkThrough value),
    Result themChanged(ThemeChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (themChanged != null) {
      return themChanged(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ThemeChangedToJson(this)..['runtimeType'] = 'themChanged';
  }
}

abstract class ThemeChanged implements AppEvent {
  const factory ThemeChanged({AppTheme them}) = _$ThemeChanged;

  factory ThemeChanged.fromJson(Map<String, dynamic> json) =
      _$ThemeChanged.fromJson;

  AppTheme get them;

  ThemeChanged copyWith({AppTheme them});
}
