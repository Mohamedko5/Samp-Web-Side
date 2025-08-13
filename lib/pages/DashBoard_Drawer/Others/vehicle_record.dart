import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/bashboard_drawer.dart';

class VehicleRecord extends StatefulWidget {
  const VehicleRecord({super.key});

  @override
  State<VehicleRecord> createState() => _VehicleRecordState();
}

class _VehicleRecordState extends State<VehicleRecord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vehicle Record")),
      drawer: Drawer(child: DashboardDrawer()),
    );
  }
}
