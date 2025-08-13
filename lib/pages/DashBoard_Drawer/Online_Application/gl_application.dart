import 'package:flutter/material.dart';

class GlApplication extends StatefulWidget {
  const GlApplication({super.key});

  @override
  State<GlApplication> createState() => _GlApplicationState();
}

class _GlApplicationState extends State<GlApplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("GL Application")));
  }
}
