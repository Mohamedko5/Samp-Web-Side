import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/dashboard.dart' show Dashboard;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Dashboard());
  }
}
