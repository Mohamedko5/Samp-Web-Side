import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/bashboard_drawer.dart';

class AdmissionApplication extends StatefulWidget {
  const AdmissionApplication({super.key});

  @override
  State<AdmissionApplication> createState() => _AdmissionApplicationState();
}

class _AdmissionApplicationState extends State<AdmissionApplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Admission Application")),
      drawer: Drawer(child: DashboardDrawer()),
    );
  }
}
