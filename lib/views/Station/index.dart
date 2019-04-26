import 'package:flutter/material.dart';

class StationView extends StatefulWidget {
  _StationViewState createState() => _StationViewState();
}

class _StationViewState extends State<StationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('This is Station view.'),
        ),
      ),
    );
  }
}
