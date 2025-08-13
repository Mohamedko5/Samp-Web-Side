import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/bashboard_drawer.dart';

class BasicInfo extends StatefulWidget {
  const BasicInfo({super.key});

  @override
  State<BasicInfo> createState() => _BasicInfoState();
}

class _BasicInfoState extends State<BasicInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Basic Info")),
      drawer: Drawer(child: DashboardDrawer()),
    );
  }
}
