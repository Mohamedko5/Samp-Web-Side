import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/bashboard_drawer.dart';
import 'package:smap_web_side/pages/body_pages.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool isLeftMenuVisible = false; // Track if left menu is visible
  bool isRightMenuVisible = false; // Track if right menu is visible

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/download.png"),
            ),
            SizedBox(width: 10),
            Text('MOHAMMED ZOALKEFL MOHAMMED HUSSEIN'),
          ],
        ),
        actions: [
          // Left menu toggle button
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              setState(() {
                isRightMenuVisible = !isRightMenuVisible;
              });
            },
          ),

          IconButton(icon: Icon(Icons.logout), onPressed: () {}),
        ],
      ),
      drawer: Drawer(child: DashboardDrawer()),
      body: BodyPages(),
    );
  }
}
