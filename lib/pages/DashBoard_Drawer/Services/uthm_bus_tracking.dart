import 'package:flutter/material.dart';

class UthmBusTracking extends StatefulWidget {
  const UthmBusTracking({super.key});

  @override
  State<UthmBusTracking> createState() => _UthmBusTrackingState();
}

class _UthmBusTrackingState extends State<UthmBusTracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("UTHM Bus Tracking")));
  }
}
