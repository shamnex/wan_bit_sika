import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:wan_bi_sika/src/core/network/http_error_helper.dart';
import 'package:wan_bi_sika/src/features/app/bloc/app_bloc.dart';
import 'package:wan_bi_sika/src/features/app/bloc/app_event.dart';
import 'package:wan_bi_sika/src/features/auth/auth_repository.dart';
import 'package:dio/dio.dart';

import 'bloc.dart';

class AuthBloc extends HydratedBloc<AuthEvent, AuthState> with DioErrorHelper {
  final AuthRepository repository;
  final AppBloc appBloc;
  AuthBloc(this.repository, this.appBloc) {
    appBloc.listen((appState) {
      if (appState.currentUser != null) {
        add(Authenticate());
      }
    });
  }
  @override
  AuthState get initialState => super.initialState ?? AuthUnAuthenticated();

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    try {
      if (event is BeginAuthentication) {
        yield AuthLoading();
        if (appBloc.state.currentUser != null) {
          yield AuthAuthenticated();
        } else {
          yield AuthUnAuthenticated();
        }
      }
      if (event is Authenticate) {
        yield AuthLoading();
        await Future.delayed(Duration(milliseconds: 2000));
        yield AuthAuthenticated();
      }
      if (event is Deauthenticate) {
        yield AuthLoading();
        appBloc.add(UserLoggedOut());
        yield AuthUnAuthenticated();
      }
    } on DioError catch (_) {
      yield AuthLoading();
      yield state;
    } catch (e) {
      yield AuthLoading();
      yield state;
    }
  }

  @override
  fromJson(Map<String, dynamic> json) {
    try {
      return AuthState.fromJson(json);
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
