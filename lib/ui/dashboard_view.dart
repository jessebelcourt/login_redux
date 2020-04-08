import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_login/redux/app/app_state.dart';

class DashboardView extends StatefulWidget {
  DashboardView({Key key}) : super(key: key);

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: _buildContent(),
    );
  }

  StoreConnector _buildContent() {
    return StoreConnector<AppState, dynamic>(
      converter: (store) => store,
      builder: (_, store) => _buildOutput(store),
    );
  }

  Center _buildOutput(Store<AppState> store) {
    String email = store.state.loginState.email;

    return Center(
       child: Text(email ?? '')
     );
  }
}
