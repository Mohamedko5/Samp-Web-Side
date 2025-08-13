import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/bashboard_drawer.dart';

class Counselling extends StatefulWidget {
  const Counselling({super.key});

  @override
  State<Counselling> createState() => _CounsellingState();
}

class _CounsellingState extends State<Counselling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counselling")),
      drawer: Drawer(child: DashboardDrawer()),
    );
  }
}
