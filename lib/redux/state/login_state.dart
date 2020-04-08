import 'package:meta/meta.dart';

@immutable
class LoginState {
  final String email;
  final String password;

  LoginState({
    @required this.email,
    @required this.password
  });

  factory LoginState.initial() {
    return LoginState(
      email: null,
      password: null
    );
  }

  LoginState copyWith({
    String email,
    String password,
  }) {
    return new LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
