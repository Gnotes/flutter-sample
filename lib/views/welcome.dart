import 'package:flutter/material.dart';
import './app.dart';

class WelcomeView extends StatefulWidget {
  @override
  _WelcomeViewState createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('This is Welcome view.'),
              RaisedButton(
                child: Text("Go to Home"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute<String>(
                        builder: (context) => AppView(),
                      )).then((String result) {
                    debugPrint("result is : $result");
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
