import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/bashboard_drawer.dart';
import 'package:smap_web_side/pages/body_pages.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.dashboard),
            SizedBox(width: 10),
            Text('MOHAMMED ZOALKEFL MOHAMMED HUSSEIN'),
          ],
        ),
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          IconButton(icon: Icon(Icons.settings), onPressed: () {}),
        ],
      ),
      drawer: Drawer(child: DashboardDrawer()),
      body: BodyPages(),
    );
  }
}
