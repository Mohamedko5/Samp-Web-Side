import 'package:flutter/material.dart';

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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,

          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Mohammed Zoalkeffl'),
              accountEmail: Text('AI240276 \nActive'),

              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/mohko.jpg'),
              ),
              decoration: BoxDecoration(color: Color(0xFFFF5722)),
            ),
          ],
        ),
      ),
      body: Center(child: Text('Welcome to the Dashboard!')),
    );
  }
}
