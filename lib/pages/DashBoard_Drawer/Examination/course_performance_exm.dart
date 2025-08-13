import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/bashboard_drawer.dart';

class CoursePerformanceExm extends StatefulWidget {
  const CoursePerformanceExm({super.key});

  @override
  State<CoursePerformanceExm> createState() => _CoursePerformanceExmState();
}

class _CoursePerformanceExmState extends State<CoursePerformanceExm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Course Performance")),
      drawer: Drawer(child: DashboardDrawer()),
    );
  }
}
