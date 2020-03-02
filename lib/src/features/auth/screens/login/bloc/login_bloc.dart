import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:wan_bi_sika/src/features/app/model/user_model.dart';
import '../../../auth_repository.dart';
import 'login_state.dart';
import 'login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository repo;

  LoginBloc(this.repo);

  @override
  LoginState get initialState => Initial();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is LoginWithGoogle) {
      yield Loading();
      await Future.delayed(Duration(milliseconds: 2000));
      yield Success(user: User(email: 'mona.okeme@icloud.com', firstName: "Mona", lastName: "Okeme"));
    }
  }
}
