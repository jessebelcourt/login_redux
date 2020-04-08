import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_login/redux/actions/login_action.dart';
import 'package:redux_login/redux/app/app_state.dart';

class LoginView extends StatefulWidget {
  LoginView({Key key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController _emailController;

  @override
  void initState() { 
    super.initState();
    _emailController = TextEditingController();
  }
  
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, dynamic>(
      // converter: (store) => UserProfileViewModel.fromStore(store),
      converter: (store) => store,
      builder: (_, store) => _buildViewContent(store),
        // _buildViewContent(),
    );
  }

  Scaffold _buildViewContent(Store<AppState> store) {
    String emailStoredInState = store.state.loginState.email;
    
    return Scaffold(
      appBar: AppBar(title: Text('Login View')),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {
          Navigator.of(context).pushNamed('/dashboard');
        },
      ),
      body: Container(
        padding: EdgeInsets.only(top: 100, left: 20, right: 20),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 20),
              child: Text('Email: $emailStoredInState'),
            ),
            TextField(
              controller: _emailController,
              onChanged: (String newEmail) {
                store.dispatch(UpdateEmailFieldAction(newEmail));
              },
            )
          ],
        ),
      ),
    );
  }
}