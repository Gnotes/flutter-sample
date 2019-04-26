import 'package:flutter/material.dart';
import './views/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'welcome',
      routes: <String, WidgetBuilder>{
        'welcome': (context) => WelcomeView(),
      },
    );
  }
}
