import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/bashboard_drawer.dart';

class BankInfo extends StatefulWidget {
  const BankInfo({super.key});

  @override
  State<BankInfo> createState() => _BankInfoState();
}

class _BankInfoState extends State<BankInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sponsoship and Bank info")),
      drawer: Drawer(child: DashboardDrawer()),
    );
  }
}
