// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

abstract class _$User {
  String get firstName;
  String get id;
  String get lastName;
  String get userName;
  String get email;

  User copyWith(
      {String firstName,
      String id,
      String lastName,
      String userName,
      String email});

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {this.firstName, this.id, this.lastName, this.userName, this.email});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String firstName;
  @override
  final String id;
  @override
  final String lastName;
  @override
  final String userName;
  @override
  final String email;

  @override
  String toString() {
    return 'User(firstName: $firstName, id: $id, lastName: $lastName, userName: $userName, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return other is _User &&
        (identical(other.firstName, firstName) ||
            other.firstName == firstName) &&
        (identical(other.id, id) || other.id == id) &&
        (identical(other.lastName, lastName) || other.lastName == lastName) &&
        (identical(other.userName, userName) || other.userName == userName) &&
        (identical(other.email, email) || other.email == email);
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      firstName.hashCode ^
      id.hashCode ^
      lastName.hashCode ^
      userName.hashCode ^
      email.hashCode;

  @override
  _$_User copyWith({
    Object firstName = immutable,
    Object id = immutable,
    Object lastName = immutable,
    Object userName = immutable,
    Object email = immutable,
  }) {
    return _$_User(
      firstName: firstName == immutable ? this.firstName : firstName as String,
      id: id == immutable ? this.id : id as String,
      lastName: lastName == immutable ? this.lastName : lastName as String,
      userName: userName == immutable ? this.userName : userName as String,
      email: email == immutable ? this.email : email as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {String firstName,
      String id,
      String lastName,
      String userName,
      String email}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get firstName;
  @override
  String get id;
  @override
  String get lastName;
  @override
  String get userName;
  @override
  String get email;

  @override
  _User copyWith(
      {String firstName,
      String id,
      String lastName,
      String userName,
      String email});
}
