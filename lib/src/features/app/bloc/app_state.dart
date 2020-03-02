library app_state;

import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_scaffold/src/features/app/model/user_model.dart';
import 'package:flutter_scaffold/src/features/app/model/app_theme.dart';
import 'package:flutter_scaffold/flavor/flavor.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@immutable
abstract class AppState with _$AppState {
  const factory AppState({
    bool hasOnboarded,
    bool loading,
    int iteration,
    Flavor flavor,
    AppTheme theme,
    bool hasCompletedWalkThrough,
    User currentUser,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);

  static AppState initialState({Flavor flavor}) => AppState(
        theme: AppTheme.orange_light,
        hasCompletedWalkThrough: false,
        hasOnboarded: false,
        flavor: Flavor.development,
      );
}
