import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/bashboard_drawer.dart';

class ResidentialRecord extends StatefulWidget {
  const ResidentialRecord({super.key});

  @override
  State<ResidentialRecord> createState() => _ResidentialRecordState();
}

class _ResidentialRecordState extends State<ResidentialRecord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Residential Record")),
      drawer: Drawer(child: DashboardDrawer()),
    );
  }
}
