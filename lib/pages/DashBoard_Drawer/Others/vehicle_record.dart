import 'package:flutter/material.dart';

class VehicleRecord extends StatefulWidget {
  const VehicleRecord({super.key});

  @override
  State<VehicleRecord> createState() => _VehicleRecordState();
}

class _VehicleRecordState extends State<VehicleRecord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Vehicle Record")));
  }
}
