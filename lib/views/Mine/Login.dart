import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: RaisedButton(
          child: Text('This is Login View. click me to go back!'),
          onPressed: () {
            Navigator.pop(context);
          },
        )),
      ),
    );
  }
}
