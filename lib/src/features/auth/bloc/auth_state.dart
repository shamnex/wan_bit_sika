import 'package:equatable/equatable.dart';

import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@immutable
abstract class AuthState with _$AuthState {
  const factory AuthState.loading() = AuthLoading;
  const factory AuthState.authAuthenticated() = AuthAuthenticated;
  const factory AuthState.authUnAuthenticated() = AuthUnAuthenticated;
  const factory AuthState.authVerifyPin() = AuthVerifyPin;
  factory AuthState.fromJson(Map<String, dynamic> json) => _$AuthStateFromJson(json);
}
