// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HasOnboarded _$_$HasOnboardedFromJson(Map<String, dynamic> json) {
  return _$HasOnboarded();
}

Map<String, dynamic> _$_$HasOnboardedToJson(_$HasOnboarded instance) =>
    <String, dynamic>{};

_$UserLoggedIn _$_$UserLoggedInFromJson(Map<String, dynamic> json) {
  return _$UserLoggedIn(
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$UserLoggedInToJson(_$UserLoggedIn instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$UserLoggedOut _$_$UserLoggedOutFromJson(Map<String, dynamic> json) {
  return _$UserLoggedOut();
}

Map<String, dynamic> _$_$UserLoggedOutToJson(_$UserLoggedOut instance) =>
    <String, dynamic>{};

_$HasCompletedWalkThrough _$_$HasCompletedWalkThroughFromJson(
    Map<String, dynamic> json) {
  return _$HasCompletedWalkThrough();
}

Map<String, dynamic> _$_$HasCompletedWalkThroughToJson(
        _$HasCompletedWalkThrough instance) =>
    <String, dynamic>{};

_$ThemeChanged _$_$ThemeChangedFromJson(Map<String, dynamic> json) {
  return _$ThemeChanged(
    them: _$enumDecodeNullable(_$AppThemeEnumMap, json['them']),
  );
}

Map<String, dynamic> _$_$ThemeChangedToJson(_$ThemeChanged instance) =>
    <String, dynamic>{
      'them': _$AppThemeEnumMap[instance.them],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$AppThemeEnumMap = {
  AppTheme.orange_light: 'orange_light',
  AppTheme.organge_dark: 'organge_dark',
};
