// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

abstract class _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result beginAuthentication(),
    @required Result deauthenticate(),
    @required Result authenticate(),
    @required Result verifyPin(),
    @required Result walkThroughComplete(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result beginAuthentication(),
    Result deauthenticate(),
    Result authenticate(),
    Result verifyPin(),
    Result walkThroughComplete(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result beginAuthentication(BeginAuthentication value),
    @required Result deauthenticate(Deauthenticate value),
    @required Result authenticate(Authenticate value),
    @required Result verifyPin(VerifyPin value),
    @required Result walkThroughComplete(HasCompletedWalkThrough value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result beginAuthentication(BeginAuthentication value),
    Result deauthenticate(Deauthenticate value),
    Result authenticate(Authenticate value),
    Result verifyPin(VerifyPin value),
    Result walkThroughComplete(HasCompletedWalkThrough value),
    @required Result orElse(),
  });
}

class _$BeginAuthentication implements BeginAuthentication {
  const _$BeginAuthentication();

  @override
  String toString() {
    return 'AuthEvent.beginAuthentication()';
  }

  @override
  bool operator ==(dynamic other) {
    return other is BeginAuthentication;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result beginAuthentication(),
    @required Result deauthenticate(),
    @required Result authenticate(),
    @required Result verifyPin(),
    @required Result walkThroughComplete(),
  }) {
    assert(beginAuthentication != null);
    assert(deauthenticate != null);
    assert(authenticate != null);
    assert(verifyPin != null);
    assert(walkThroughComplete != null);
    return beginAuthentication();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result beginAuthentication(),
    Result deauthenticate(),
    Result authenticate(),
    Result verifyPin(),
    Result walkThroughComplete(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (beginAuthentication != null) {
      return beginAuthentication();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result beginAuthentication(BeginAuthentication value),
    @required Result deauthenticate(Deauthenticate value),
    @required Result authenticate(Authenticate value),
    @required Result verifyPin(VerifyPin value),
    @required Result walkThroughComplete(HasCompletedWalkThrough value),
  }) {
    assert(beginAuthentication != null);
    assert(deauthenticate != null);
    assert(authenticate != null);
    assert(verifyPin != null);
    assert(walkThroughComplete != null);
    return beginAuthentication(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result beginAuthentication(BeginAuthentication value),
    Result deauthenticate(Deauthenticate value),
    Result authenticate(Authenticate value),
    Result verifyPin(VerifyPin value),
    Result walkThroughComplete(HasCompletedWalkThrough value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (beginAuthentication != null) {
      return beginAuthentication(this);
    }
    return orElse();
  }
}

abstract class BeginAuthentication implements AuthEvent {
  const factory BeginAuthentication() = _$BeginAuthentication;
}

class _$Deauthenticate implements Deauthenticate {
  const _$Deauthenticate();

  @override
  String toString() {
    return 'AuthEvent.deauthenticate()';
  }

  @override
  bool operator ==(dynamic other) {
    return other is Deauthenticate;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result beginAuthentication(),
    @required Result deauthenticate(),
    @required Result authenticate(),
    @required Result verifyPin(),
    @required Result walkThroughComplete(),
  }) {
    assert(beginAuthentication != null);
    assert(deauthenticate != null);
    assert(authenticate != null);
    assert(verifyPin != null);
    assert(walkThroughComplete != null);
    return deauthenticate();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result beginAuthentication(),
    Result deauthenticate(),
    Result authenticate(),
    Result verifyPin(),
    Result walkThroughComplete(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deauthenticate != null) {
      return deauthenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result beginAuthentication(BeginAuthentication value),
    @required Result deauthenticate(Deauthenticate value),
    @required Result authenticate(Authenticate value),
    @required Result verifyPin(VerifyPin value),
    @required Result walkThroughComplete(HasCompletedWalkThrough value),
  }) {
    assert(beginAuthentication != null);
    assert(deauthenticate != null);
    assert(authenticate != null);
    assert(verifyPin != null);
    assert(walkThroughComplete != null);
    return deauthenticate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result beginAuthentication(BeginAuthentication value),
    Result deauthenticate(Deauthenticate value),
    Result authenticate(Authenticate value),
    Result verifyPin(VerifyPin value),
    Result walkThroughComplete(HasCompletedWalkThrough value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deauthenticate != null) {
      return deauthenticate(this);
    }
    return orElse();
  }
}

abstract class Deauthenticate implements AuthEvent {
  const factory Deauthenticate() = _$Deauthenticate;
}

class _$Authenticate implements Authenticate {
  const _$Authenticate();

  @override
  String toString() {
    return 'AuthEvent.authenticate()';
  }

  @override
  bool operator ==(dynamic other) {
    return other is Authenticate;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result beginAuthentication(),
    @required Result deauthenticate(),
    @required Result authenticate(),
    @required Result verifyPin(),
    @required Result walkThroughComplete(),
  }) {
    assert(beginAuthentication != null);
    assert(deauthenticate != null);
    assert(authenticate != null);
    assert(verifyPin != null);
    assert(walkThroughComplete != null);
    return authenticate();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result beginAuthentication(),
    Result deauthenticate(),
    Result authenticate(),
    Result verifyPin(),
    Result walkThroughComplete(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticate != null) {
      return authenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result beginAuthentication(BeginAuthentication value),
    @required Result deauthenticate(Deauthenticate value),
    @required Result authenticate(Authenticate value),
    @required Result verifyPin(VerifyPin value),
    @required Result walkThroughComplete(HasCompletedWalkThrough value),
  }) {
    assert(beginAuthentication != null);
    assert(deauthenticate != null);
    assert(authenticate != null);
    assert(verifyPin != null);
    assert(walkThroughComplete != null);
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result beginAuthentication(BeginAuthentication value),
    Result deauthenticate(Deauthenticate value),
    Result authenticate(Authenticate value),
    Result verifyPin(VerifyPin value),
    Result walkThroughComplete(HasCompletedWalkThrough value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticate != null) {
      return authenticate(this);
    }
    return orElse();
  }
}

abstract class Authenticate implements AuthEvent {
  const factory Authenticate() = _$Authenticate;
}

class _$VerifyPin implements VerifyPin {
  const _$VerifyPin();

  @override
  String toString() {
    return 'AuthEvent.verifyPin()';
  }

  @override
  bool operator ==(dynamic other) {
    return other is VerifyPin;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result beginAuthentication(),
    @required Result deauthenticate(),
    @required Result authenticate(),
    @required Result verifyPin(),
    @required Result walkThroughComplete(),
  }) {
    assert(beginAuthentication != null);
    assert(deauthenticate != null);
    assert(authenticate != null);
    assert(verifyPin != null);
    assert(walkThroughComplete != null);
    return verifyPin();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result beginAuthentication(),
    Result deauthenticate(),
    Result authenticate(),
    Result verifyPin(),
    Result walkThroughComplete(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verifyPin != null) {
      return verifyPin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result beginAuthentication(BeginAuthentication value),
    @required Result deauthenticate(Deauthenticate value),
    @required Result authenticate(Authenticate value),
    @required Result verifyPin(VerifyPin value),
    @required Result walkThroughComplete(HasCompletedWalkThrough value),
  }) {
    assert(beginAuthentication != null);
    assert(deauthenticate != null);
    assert(authenticate != null);
    assert(verifyPin != null);
    assert(walkThroughComplete != null);
    return verifyPin(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result beginAuthentication(BeginAuthentication value),
    Result deauthenticate(Deauthenticate value),
    Result authenticate(Authenticate value),
    Result verifyPin(VerifyPin value),
    Result walkThroughComplete(HasCompletedWalkThrough value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verifyPin != null) {
      return verifyPin(this);
    }
    return orElse();
  }
}

abstract class VerifyPin implements AuthEvent {
  const factory VerifyPin() = _$VerifyPin;
}

class _$HasCompletedWalkThrough implements HasCompletedWalkThrough {
  const _$HasCompletedWalkThrough();

  @override
  String toString() {
    return 'AuthEvent.walkThroughComplete()';
  }

  @override
  bool operator ==(dynamic other) {
    return other is HasCompletedWalkThrough;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result beginAuthentication(),
    @required Result deauthenticate(),
    @required Result authenticate(),
    @required Result verifyPin(),
    @required Result walkThroughComplete(),
  }) {
    assert(beginAuthentication != null);
    assert(deauthenticate != null);
    assert(authenticate != null);
    assert(verifyPin != null);
    assert(walkThroughComplete != null);
    return walkThroughComplete();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result beginAuthentication(),
    Result deauthenticate(),
    Result authenticate(),
    Result verifyPin(),
    Result walkThroughComplete(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (walkThroughComplete != null) {
      return walkThroughComplete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result beginAuthentication(BeginAuthentication value),
    @required Result deauthenticate(Deauthenticate value),
    @required Result authenticate(Authenticate value),
    @required Result verifyPin(VerifyPin value),
    @required Result walkThroughComplete(HasCompletedWalkThrough value),
  }) {
    assert(beginAuthentication != null);
    assert(deauthenticate != null);
    assert(authenticate != null);
    assert(verifyPin != null);
    assert(walkThroughComplete != null);
    return walkThroughComplete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result beginAuthentication(BeginAuthentication value),
    Result deauthenticate(Deauthenticate value),
    Result authenticate(Authenticate value),
    Result verifyPin(VerifyPin value),
    Result walkThroughComplete(HasCompletedWalkThrough value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (walkThroughComplete != null) {
      return walkThroughComplete(this);
    }
    return orElse();
  }
}

abstract class HasCompletedWalkThrough implements AuthEvent {
  const factory HasCompletedWalkThrough() = _$HasCompletedWalkThrough;
}
