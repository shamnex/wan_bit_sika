import 'package:flutter_scaffold/src/core/network/http_client.dart';
import 'package:flutter_scaffold/src/core/network/token_manager.dart';
import 'package:flutter_scaffold/src/features/app/model/user_model.dart';
import 'package:hive/hive.dart';

enum ActionRequired { createorg, loginorg }

abstract class AuthRepository with TokenManager {
  Future<User> signUp({
    String email,
    String password,
    String confirmPassword,
    String username,
  });
  Future<User> login({
    String email,
    String password,
  });
  Future<void> logOut();
  Future<void> enterCode({int code});

  Future resetPassword({String email});
}

class AuthRepositoryImpl extends TokenManagerImpl implements AuthRepository {
  AuthRepositoryImpl(HiveInterface hive, AppHTTPClient client)
      : _client = client,
        super(hive);

  final AppHTTPClient _client;

  @override
  Future<void> enterCode({int code}) {
    // TODO: implement enterCode
    return null;
  }

  @override
  Future resetPassword({String email}) {
    // TODO: implement resetPassword
    return null;
  }

  @override
  Future<User> login({String email, String password}) {
    // TODO: implement login
    return null;
  }

  @override
  Future<void> logOut() {
    // TODO: implement logOut
    return null;
  }

  @override
  Future<User> signUp({String email, String password, String confirmPassword, String username}) {
    // TODO: implement signUp
    return null;
  }
}

class MockAuthRepositoryImpl extends TokenManagerImpl implements AuthRepository {
  MockAuthRepositoryImpl(HiveInterface hive) : super(hive);

  @override
  Future<void> enterCode({int code}) {
    // TODO: implement enterCode
    return null;
  }

  @override
  Future resetPassword({String email}) {
    // TODO: implement resetPassword
    return null;
  }

  @override
  Future<User> login({String email, String password}) {
    // TODO: implement login
    return null;
  }

  @override
  Future<void> logOut() {
    // TODO: implement logOut
    return null;
  }

  @override
  Future<User> signUp({String email, String password, String confirmPassword, String username}) {
    // TODO: implement signUp
    return null;
  }
}

class DevAuthRepositoryImpl extends TokenManagerImpl implements AuthRepository {
  DevAuthRepositoryImpl(HiveInterface hive, AppHTTPClient client)
      : _client = client,
        super(hive);

  final AppHTTPClient _client;

  @override
  Future<void> enterCode({int code}) {
    // TODO: implement enterCode
    return null;
  }

  @override
  Future resetPassword({String email}) {
    // TODO: implement resetPassword
    return null;
  }

  @override
  Future<User> login({String email, String password}) {
    // TODO: implement login
    return null;
  }

  @override
  Future<void> logOut() {
    // TODO: implement logOut
    return null;
  }

  @override
  Future<User> signUp({String email, String password, String confirmPassword, String username}) {
    // TODO: implement signUp
    return null;
  }
}
