import 'package:wan_bi_sika/src/features/app/model/app_theme.dart';
import 'package:wan_bi_sika/src/features/app/model/user_model.dart';

import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_event.freezed.dart';
part 'app_event.g.dart';

@immutable
abstract class AppEvent with _$AppEvent {
  const factory AppEvent.hasOnboarded() = HasOnboarded;
  const factory AppEvent.userLoggedIn(User user) = UserLoggedIn;
  const factory AppEvent.userLoggedOut() = UserLoggedOut;
  const factory AppEvent.walkThroughComplete() = HasCompletedWalkThrough;
  const factory AppEvent.themChanged({AppTheme them}) = ThemeChanged;
  factory AppEvent.fromJson(Map<String, dynamic> json) => _$AppEventFromJson(json);
}
