import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/bashboard_drawer.dart';

class ResidentialElectricSticker extends StatefulWidget {
  const ResidentialElectricSticker({super.key});

  @override
  State<ResidentialElectricSticker> createState() =>
      _ResidentialElectricStickerState();
}

class _ResidentialElectricStickerState
    extends State<ResidentialElectricSticker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Residential Electric Sticker")),
      drawer: Drawer(child: DashboardDrawer()),
    );
  }
}
