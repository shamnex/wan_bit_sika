import 'package:wan_bi_sika/flavor/flavor.dart';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'app_event.dart';
import 'app_state.dart';

class AppBloc extends HydratedBloc<AppEvent, AppState> {
  AppBloc(Flavor flavor) : _flavor = flavor;

  Flavor _flavor;
  @override
  get initialState => super.initialState.copyWith(hasOnboarded: false) ?? AppState.initialState(flavor: _flavor);

  @override
  Stream<AppState> mapEventToState(AppEvent event) async* {
    if (event is ThemeChanged) {
      yield state.copyWith(theme: event.theme);
    }
    if (event is HasCompletedWalkThrough) {
      yield state.copyWith(hasCompletedWalkThrough: true);
    }
    if (event is UserLoggedIn) {
      yield state.copyWith(currentUser: event.user);
    }
    if (event is HasOnboarded) {
      yield state.copyWith(hasOnboarded: true);
    }
    if (event is UserLoggedOut) {
      yield state.copyWith(currentUser: null);
    }
  }

  @override
  fromJson(Map<String, dynamic> json) {
    try {
      return AppState.fromJson(json);
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, dynamic> toJson(state) {
    try {
      return state.toJson();
    } catch (e) {
      return null;
    }
  }
}
