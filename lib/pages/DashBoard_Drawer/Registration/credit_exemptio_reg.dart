import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/bashboard_drawer.dart';

class CreditExemptioReg extends StatefulWidget {
  const CreditExemptioReg({super.key});

  @override
  State<CreditExemptioReg> createState() => _CreditExemptioRegState();
}

class _CreditExemptioRegState extends State<CreditExemptioReg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Credit Exemption")),
      drawer: Drawer(child: DashboardDrawer()),
      body: Center(child: Text("data")),
    );
  }
}
