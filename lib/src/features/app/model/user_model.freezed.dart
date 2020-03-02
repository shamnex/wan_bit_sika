// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

abstract class _$User {
  String get name;
  String get id;
  String get email;

  User copyWith({String name, String id, String email});

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$_User implements _User {
  const _$_User({this.name, this.id, this.email});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  final String email;

  @override
  String toString() {
    return 'User(name: $name, id: $id, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return other is _User &&
        (identical(other.name, name) || other.name == name) &&
        (identical(other.id, id) || other.id == id) &&
        (identical(other.email, email) || other.email == email);
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ name.hashCode ^ id.hashCode ^ email.hashCode;

  @override
  _$_User copyWith({
    Object name = immutable,
    Object id = immutable,
    Object email = immutable,
  }) {
    return _$_User(
      name: name == immutable ? this.name : name as String,
      id: id == immutable ? this.id : id as String,
      email: email == immutable ? this.email : email as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User({String name, String id, String email}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  String get email;

  @override
  _User copyWith({String name, String id, String email});
}
