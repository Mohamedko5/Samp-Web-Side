import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/bashboard_drawer.dart';
import 'package:smap_web_side/pages/body_pages.dart';
import 'package:smap_web_side/pages/right_menu_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool isLeftMenuVisible = false;
  bool isRightMenuVisible = false;

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
            Text(
              'MOHAMMED ZOALKEFL MOHAMMED HUSSEIN',
              style: TextStyle(fontSize: 8),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              setState(() {
                isRightMenuVisible = !isRightMenuVisible;
              });
            },
          ),
        ],
      ),
      drawer: Drawer(child: DashboardDrawer()),
      body: Row(
        children: [
          Expanded(child: BodyPages()),

          if (isRightMenuVisible) RightMenuPage(),
        ],
      ),
    );
  }
}
