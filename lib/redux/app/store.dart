import 'dart:async';
import 'package:redux/redux.dart';
import 'package:redux_login/redux/app/app_reducers.dart';
import 'package:redux_login/redux/app/app_state.dart';

Future<Store<AppState>> createStore() async {
  return Store(
    appReducer,
    initialState: AppState.initial(),
  );
}