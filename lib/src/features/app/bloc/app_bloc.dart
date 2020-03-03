import 'package:wan_bi_sika/flavor/flavor.dart';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'app_event.dart';
import 'app_state.dart';

class AppBloc extends HydratedBloc<AppEvent, AppState> {
  AppBloc(Flavor flavor) : _flavor = flavor;

  Flavor _flavor;
  @override
  get initialState => super.initialState.copyWith(loading: false) ?? AppState.initialState(flavor: _flavor);

  @override
  Stream<AppState> mapEventToState(AppEvent event) async* {
    yield event.when<AppState>(
      hasOnboarded: () => state.copyWith(hasOnboarded: false),
      userLoggedIn: (user) => state.copyWith(currentUser: user),
      userLoggedOut: () => state.copyWith(currentUser: null),
      walkThroughComplete: () => state.copyWith(hasCompletedWalkThrough: true),
      themChanged: (theme) => state.copyWith(theme: theme),
    );
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
