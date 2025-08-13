import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/bashboard_drawer.dart';

class CourseReg extends StatefulWidget {
  const CourseReg({super.key});

  @override
  State<CourseReg> createState() => _CourseRegState();
}

class _CourseRegState extends State<CourseReg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Course Registration")),
      drawer: Drawer(child: DashboardDrawer()),
    );
  }
}
