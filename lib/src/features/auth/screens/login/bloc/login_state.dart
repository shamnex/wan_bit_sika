import 'package:meta/meta.dart';
import 'package:wan_bi_sika/src/features/app/model/user_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_state.freezed.dart';
part 'login_state.g.dart';

@immutable
abstract class LoginState with _$LoginState {
  const factory LoginState.intial() = Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.success({User user}) = Success;

  factory LoginState.fromJson(Map<String, dynamic> json) => _$LoginStateFromJson(json);
}
