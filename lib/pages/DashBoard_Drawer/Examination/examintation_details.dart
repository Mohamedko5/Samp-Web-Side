import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/bashboard_drawer.dart';

class ExamintationDetails extends StatefulWidget {
  const ExamintationDetails({super.key});

  @override
  State<ExamintationDetails> createState() => _ExamintationDetailsState();
}

class _ExamintationDetailsState extends State<ExamintationDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Examination Details")),
      drawer: Drawer(child: DashboardDrawer()),
    );
  }
}
