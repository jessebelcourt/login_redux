import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_login/redux/app/app_reducers.dart';
import 'package:redux_login/redux/app/app_state.dart';
import 'package:redux_login/redux/app/store.dart';
import 'package:redux_login/ui/dashboard_view.dart';
import 'package:redux_login/ui/login_view.dart';

void main() async {
  Store<AppState> store = await createStore();

  runApp(MyApp(store));
}

class MyApp extends StatefulWidget {

  final Store<AppState> store;
  MyApp(this.store);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: widget.store,
      child: _buildMaterialApp(),
    );
  }

  MaterialApp _buildMaterialApp() {
    return MaterialApp(
      routes: {
        '/': (BuildContext context) => LoginView(),
        '/dashboard': (BuildContext context) => DashboardView(),
      },
    );
  }
 }