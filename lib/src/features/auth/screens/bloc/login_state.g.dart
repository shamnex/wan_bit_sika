// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Initial _$_$InitialFromJson(Map<String, dynamic> json) {
  return _$Initial();
}

Map<String, dynamic> _$_$InitialToJson(_$Initial instance) =>
    <String, dynamic>{};

_$Loading _$_$LoadingFromJson(Map<String, dynamic> json) {
  return _$Loading();
}

Map<String, dynamic> _$_$LoadingToJson(_$Loading instance) =>
    <String, dynamic>{};

_$Success _$_$SuccessFromJson(Map<String, dynamic> json) {
  return _$Success(
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$SuccessToJson(_$Success instance) => <String, dynamic>{
      'user': instance.user,
    };
