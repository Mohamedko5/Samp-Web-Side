import 'package:flutter/material.dart';

class Noifications extends StatefulWidget {
  const Noifications({super.key});

  @override
  State<Noifications> createState() => _NoificationsState();
}

class _NoificationsState extends State<Noifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Noifications")));
  }
}
