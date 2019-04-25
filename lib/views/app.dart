import 'package:flutter/material.dart';
import './home.dart';

class AppView extends StatefulWidget {
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('This is App view.'),
              RaisedButton(
                child: Text("Go to Home"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute<String>(
                        builder: (context) => HomeView(
                              title: "From App",
                            ),
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
