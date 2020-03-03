import 'package:meta/meta.dart';
part 'auth_event.freezed.dart';

@immutable
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.beginAuthentication() = BeginAuthentication;
  const factory AuthEvent.deauthenticate() = Deauthenticate;
  const factory AuthEvent.authenticate() = Authenticate;
  const factory AuthEvent.verifyPin() = VerifyPin;
  const factory AuthEvent.walkThroughComplete() = HasCompletedWalkThrough;
}
