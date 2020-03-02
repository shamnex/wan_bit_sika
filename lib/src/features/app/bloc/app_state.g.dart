// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_state;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$_$_AppStateFromJson(Map<String, dynamic> json) {
  return _$_AppState(
    hasOnboarded: json['hasOnboarded'] as bool,
    loading: json['loading'] as bool,
    iteration: json['iteration'] as int,
    flavor: _$enumDecodeNullable(_$FlavorEnumMap, json['flavor']),
    theme: _$enumDecodeNullable(_$AppThemeEnumMap, json['theme']),
    hasCompletedWalkThrough: json['hasCompletedWalkThrough'] as bool,
    currentUser: json['currentUser'] == null
        ? null
        : User.fromJson(json['currentUser'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'hasOnboarded': instance.hasOnboarded,
      'loading': instance.loading,
      'iteration': instance.iteration,
      'flavor': _$FlavorEnumMap[instance.flavor],
      'theme': _$AppThemeEnumMap[instance.theme],
      'hasCompletedWalkThrough': instance.hasCompletedWalkThrough,
      'currentUser': instance.currentUser,
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

const _$FlavorEnumMap = {
  Flavor.production: 'production',
  Flavor.development: 'development',
  Flavor.mock: 'mock',
};

const _$AppThemeEnumMap = {
  AppTheme.orange_light: 'orange_light',
  AppTheme.organge_dark: 'organge_dark',
};
