

import 'package:redux_login/redux/app/app_state.dart';
import 'package:redux_login/redux/reducers/login_reducers.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    loginState: loginReducer(state.loginState, action),
  );
}