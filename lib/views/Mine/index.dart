import 'package:flutter/material.dart';
import './Login.dart';

class MineView extends StatefulWidget {
  _MineViewState createState() => _MineViewState();
}

class _MineViewState extends State<MineView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("This is Mine View."),
              RaisedButton(
                child: Text("Sign In"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginView()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
