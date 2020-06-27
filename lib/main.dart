import 'package:flutter/material.dart';
import 'package:sampleapp/screens/screen-1.dart';
import 'package:sampleapp/screens/screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Screen1(),
        '/second': (context) => Screen2(),
      },
    );
  }
}
