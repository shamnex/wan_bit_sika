import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@immutable
abstract class User with _$User {
  const factory User({
    String firstName,
    String id,
    String lastName,
    String userName,
    String email,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
