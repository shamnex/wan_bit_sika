import 'package:meta/meta.dart';
part 'login_event.freezed.dart';

@immutable
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginWithGooogle() = LoginWithGoogle;
}
