import 'package:redux/redux.dart';
import 'package:redux_login/redux/actions/login_action.dart';
import 'package:redux_login/redux/state/login_state.dart';

final loginReducer = combineReducers<LoginState>([
  TypedReducer<LoginState, UpdateEmailFieldAction>(_updateEmailFieldAction),
]);

LoginState _updateEmailFieldAction(LoginState state, UpdateEmailFieldAction action) =>
    state.copyWith(email: action.newEmailField);