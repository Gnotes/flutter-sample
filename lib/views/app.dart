import 'package:flutter/material.dart';
import './Home/index.dart';
import './Data/index.dart';
import './Station/index.dart';
import './Mine/index.dart';

class AppView extends StatefulWidget {
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          HomeView(),
          DataView(),
          StationView(),
          MineView(),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: TabBar(
          controller: controller,
          labelColor: Theme.of(context).primaryColor,
          unselectedLabelColor: Colors.black26,
          tabs: <Widget>[
            Tab(text: '首页', icon: Icon(Icons.home)),
            Tab(text: '数据', icon: Icon(Icons.bubble_chart)),
            Tab(text: '工作台', icon: Icon(Icons.inbox)),
            Tab(text: '我的', icon: Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
}
