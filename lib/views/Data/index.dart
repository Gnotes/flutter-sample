import 'package:flutter/material.dart';

class DataView extends StatefulWidget{
  @override
  _DataViewState createState()=> _DataViewState();
}

class _DataViewState extends State<DataView>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('This is Data view.'),
        ),
      ),
    )
  }
}