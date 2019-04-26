import 'package:flutter/material.dart';
import '../../components/drawer.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  void _onPressCameraButton() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.photo_camera),
            onPressed: _onPressCameraButton,
          )
        ],
      ),
      drawer: DrawerComponent(),
      body: Column(
        children: <Widget>[
          Text("1"),
          Text("2"),
          Text("3"),
          Text("4"),
        ],
      ),
    );
  }
}
