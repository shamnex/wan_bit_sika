import 'package:equatable/equatable.dart';
import 'package:flutter_scaffold/src/features/app/model/app_theme.dart';
import 'package:flutter_scaffold/src/features/app/model/user_model.dart';

abstract class AppEvent extends Equatable {
  AppEvent();
  List<Object> get props => [];
}

class HasOnboarded extends AppEvent {
  @override
  List<Object> get props => ['HasOnboarded'];
}

class UserLoggedIn extends AppEvent {
  final User user;
  UserLoggedIn(this.user);
  @override
  List<Object> get props => [user];
}

class UserLoggedOut extends AppEvent {}

class HasCompletedWalkThrough extends AppEvent {
  @override
  List<Object> get props => ['HasCompletedWalkThrough'];
}

class ThemeChanged extends AppEvent {
  ThemeChanged({this.theme});
  final AppTheme theme;
  @override
  List<Object> get props => [theme];
}
