import 'package:flutter_scaffold/src/core/network/http_error_helper.dart';
import 'package:flutter_scaffold/src/features/app/bloc/app_bloc.dart';
import 'package:flutter_scaffold/src/features/app/bloc/app_event.dart';
import 'package:flutter_scaffold/src/features/auth/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import 'bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> with DioErrorHelper {
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
  AuthState get initialState => appBloc.state.currentUser != null ? AuthAuthenticated() : AuthUnAuthenticated();

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
}
