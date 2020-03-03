// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_state;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

abstract class _$AppState {
  bool get hasOnboarded;
  bool get loading;
  Flavor get flavor;
  AppTheme get theme;
  bool get hasCompletedWalkThrough;
  User get currentUser;
  String get pin;

  AppState copyWith(
      {bool hasOnboarded,
      bool loading,
      Flavor flavor,
      AppTheme theme,
      bool hasCompletedWalkThrough,
      User currentUser,
      String pin});

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$_AppState implements _AppState {
  const _$_AppState(
      {this.hasOnboarded,
      this.loading,
      this.flavor,
      this.theme,
      this.hasCompletedWalkThrough,
      this.currentUser,
      this.pin});

  factory _$_AppState.fromJson(Map<String, dynamic> json) =>
      _$_$_AppStateFromJson(json);

  @override
  final bool hasOnboarded;
  @override
  final bool loading;
  @override
  final Flavor flavor;
  @override
  final AppTheme theme;
  @override
  final bool hasCompletedWalkThrough;
  @override
  final User currentUser;
  @override
  final String pin;

  @override
  String toString() {
    return 'AppState(hasOnboarded: $hasOnboarded, loading: $loading, flavor: $flavor, theme: $theme, hasCompletedWalkThrough: $hasCompletedWalkThrough, currentUser: $currentUser, pin: $pin)';
  }

  @override
  bool operator ==(dynamic other) {
    return other is _AppState &&
        (identical(other.hasOnboarded, hasOnboarded) ||
            other.hasOnboarded == hasOnboarded) &&
        (identical(other.loading, loading) || other.loading == loading) &&
        (identical(other.flavor, flavor) || other.flavor == flavor) &&
        (identical(other.theme, theme) || other.theme == theme) &&
        (identical(other.hasCompletedWalkThrough, hasCompletedWalkThrough) ||
            other.hasCompletedWalkThrough == hasCompletedWalkThrough) &&
        (identical(other.currentUser, currentUser) ||
            other.currentUser == currentUser) &&
        (identical(other.pin, pin) || other.pin == pin);
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      hasOnboarded.hashCode ^
      loading.hashCode ^
      flavor.hashCode ^
      theme.hashCode ^
      hasCompletedWalkThrough.hashCode ^
      currentUser.hashCode ^
      pin.hashCode;

  @override
  _$_AppState copyWith({
    Object hasOnboarded = immutable,
    Object loading = immutable,
    Object flavor = immutable,
    Object theme = immutable,
    Object hasCompletedWalkThrough = immutable,
    Object currentUser = immutable,
    Object pin = immutable,
  }) {
    return _$_AppState(
      hasOnboarded:
          hasOnboarded == immutable ? this.hasOnboarded : hasOnboarded as bool,
      loading: loading == immutable ? this.loading : loading as bool,
      flavor: flavor == immutable ? this.flavor : flavor as Flavor,
      theme: theme == immutable ? this.theme : theme as AppTheme,
      hasCompletedWalkThrough: hasCompletedWalkThrough == immutable
          ? this.hasCompletedWalkThrough
          : hasCompletedWalkThrough as bool,
      currentUser:
          currentUser == immutable ? this.currentUser : currentUser as User,
      pin: pin == immutable ? this.pin : pin as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppStateToJson(this);
  }
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {bool hasOnboarded,
      bool loading,
      Flavor flavor,
      AppTheme theme,
      bool hasCompletedWalkThrough,
      User currentUser,
      String pin}) = _$_AppState;

  factory _AppState.fromJson(Map<String, dynamic> json) = _$_AppState.fromJson;

  @override
  bool get hasOnboarded;
  @override
  bool get loading;
  @override
  Flavor get flavor;
  @override
  AppTheme get theme;
  @override
  bool get hasCompletedWalkThrough;
  @override
  User get currentUser;
  @override
  String get pin;

  @override
  _AppState copyWith(
      {bool hasOnboarded,
      bool loading,
      Flavor flavor,
      AppTheme theme,
      bool hasCompletedWalkThrough,
      User currentUser,
      String pin});
}
