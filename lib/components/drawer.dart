import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                      onPressed: () {},
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
    );
  }
}
