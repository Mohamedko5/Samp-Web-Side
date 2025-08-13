import 'package:flutter/material.dart';

class SystemStatus extends StatefulWidget {
  const SystemStatus({super.key});

  @override
  State<SystemStatus> createState() => _SystemStatusState();
}

class _SystemStatusState extends State<SystemStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("System Status")));
  }
}
