import 'package:meta/meta.dart';

@immutable
abstract class LoginEvent {}

class LoginWithGoogle extends LoginEvent {}
