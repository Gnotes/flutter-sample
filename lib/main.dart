import 'package:flutter/material.dart';
import './views/app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'app',
      routes: <String, WidgetBuilder>{
        'app': (context) => AppView(),
      },
    );
  }
}
