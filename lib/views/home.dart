import 'package:flutter/material.dart';
import './app.dart';

class HomeView extends StatefulWidget {
  final String title;

  HomeView({Key key, @required this.title}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState(title);
}

class _HomeViewState extends State<HomeView> {
  String title;

  _HomeViewState(String title) {
    this.title = title;
  }

  void _onPressCameraButton() {}

  void _onPressAvatarButton() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.photo_camera),
            onPressed: _onPressCameraButton,
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        iconSize: 70.0,
                        icon: Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                        onPressed: _onPressAvatarButton,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text("Flutter",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black87,
                          )),
                    )
                  ],
                ),
              ),
            ),
            ListTile(leading: Icon(Icons.email), title: Text("Email")),
            ListTile(leading: Icon(Icons.sms), title: Text("SMS")),
            ListTile(leading: Icon(Icons.phone), title: Text("Phone")),
          ],
        ),
      ),
      body: Container(
          child: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context, "Hello");
          },
          child: Text("Back to App View."),
        ),
      )),
    );
  }
}
