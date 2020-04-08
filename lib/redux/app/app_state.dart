import 'package:meta/meta.dart';
import 'package:redux_login/redux/state/login_state.dart';

@immutable
class AppState  {
  final LoginState loginState;

  AppState({
    @required this.loginState,
  });

  factory AppState.initial(){
    return AppState(
      loginState: LoginState.initial(),
    );
  }

  AppState copyWith({
    LoginState loginState,
  }){
    return AppState(
      loginState: loginState ?? this.loginState,
    );
  }
}
