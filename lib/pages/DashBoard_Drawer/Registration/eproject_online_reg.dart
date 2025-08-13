import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/bashboard_drawer.dart';

class EprojectOnlineReg extends StatefulWidget {
  const EprojectOnlineReg({super.key});

  @override
  State<EprojectOnlineReg> createState() => _EprojectOnlineRegState();
}

class _EprojectOnlineRegState extends State<EprojectOnlineReg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("eProject Online")),
      drawer: Drawer(child: DashboardDrawer()),
    );
  }
}
