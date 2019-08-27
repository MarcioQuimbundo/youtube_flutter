import 'package:flutter/material.dart';
import 'package:fluttertube/src/ui/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterTube",
      home: HomePage(),
    );
  }
}