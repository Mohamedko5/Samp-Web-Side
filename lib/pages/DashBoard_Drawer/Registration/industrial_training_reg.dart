import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/bashboard_drawer.dart';

class IndustrialTrainingReg extends StatefulWidget {
  const IndustrialTrainingReg({super.key});

  @override
  State<IndustrialTrainingReg> createState() => _IndustrialTrainingRegState();
}

class _IndustrialTrainingRegState extends State<IndustrialTrainingReg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Industrial Training")),
      drawer: Drawer(child: DashboardDrawer()),
    );
  }
}
