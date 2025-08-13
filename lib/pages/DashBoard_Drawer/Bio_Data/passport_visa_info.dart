import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/bashboard_drawer.dart';

class PassportVisaInfo extends StatefulWidget {
  const PassportVisaInfo({super.key});

  @override
  State<PassportVisaInfo> createState() => _PassportVisaInfoState();
}

class _PassportVisaInfoState extends State<PassportVisaInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Passport  and Visa Info ")),
      drawer: Drawer(child: DashboardDrawer()),
    );
  }
}
