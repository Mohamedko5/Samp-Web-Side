import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/bashboard_drawer.dart';

class Covid19Sataus extends StatefulWidget {
  const Covid19Sataus({super.key});

  @override
  State<Covid19Sataus> createState() => _Covid19SatausState();
}

class _Covid19SatausState extends State<Covid19Sataus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("COVID-19 Vaccnation Status")),
      drawer: Drawer(child: DashboardDrawer()),
    );
  }
}
