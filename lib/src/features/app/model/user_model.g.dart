// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    firstName: json['firstName'] as String,
    id: json['id'] as String,
    lastName: json['lastName'] as String,
    userName: json['userName'] as String,
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'id': instance.id,
      'lastName': instance.lastName,
      'userName': instance.userName,
      'email': instance.email,
    };
