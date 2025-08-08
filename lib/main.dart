import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SMAPO Dashboard',
      theme: _isDarkTheme ? ThemeData.dark() : ThemeData.light(),
      home: DashboardPage(
        onThemeChanged: (isDark) {
          setState(() {
            _isDarkTheme = isDark;
          });
        },
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  final Function(bool) onThemeChanged;

  DashboardPage({required this.onThemeChanged});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.account_circle),
            SizedBox(width: 10),
            Text("MOHAMMED ZOALKFEL MOHAMED AI240276"),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () => _showNotificationDialog(context),
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () => _showSettingsDialog(context),
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => ProfilePage()),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("MOHAMMED ZOALKFEL MOHAMED"),
              accountEmail: Text("AI240276"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.account_circle, color: Colors.black),
              ),
            ),
            ListTile(
              title: Text("Dashboard"),
              leading: Icon(Icons.dashboard),
              onTap: () {},
            ),
            ListTile(
              title: Text("Biodata"),
              leading: Icon(Icons.person),
              onTap: () {},
            ),
            ListTile(
              title: Text("Registration"),
              leading: Icon(Icons.assignment),
              onTap: () {},
            ),
            // Additional drawer items
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.account_circle),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ProfilePage()),
              ),
            ),
            ListTile(
              title: Text("Online Application"),
              leading: Icon(Icons.web),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Dashboard',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  DashboardCard(
                    title:
                        'JADUAL KERJA SEMESTER III SESI 2024/2025 & JADUAL KERJA SEMESTER KHAS SESI 2025/2026',
                    date: '16 JUL 2025 11:52:42 AM',
                    body:
                        'Sila semak jadual kerja yang telah dimuat naik di pautan ini. Terima kasih.',
                  ),
                  DashboardCard(
                    title:
                        'NOTIS MAKLUMAN LOKASI UJIAN MUET SESI 2 TAHUN 2025 BAGI PUSAT UJIAN UTHM (KAMPUS INDUK)',
                    date: '16 JUL 2025 11:21:28 AM',
                    body:
                        'Sila rujuk notis makluman di pautan ini. Terima kasih.',
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Previous')),
                ElevatedButton(onPressed: () {}, child: Text('Next')),
                SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: Text('Refresh')),
                ElevatedButton(onPressed: () {}, child: Text('Logout')),
              ],
            ),
            SizedBox(height: 10),
            Pagination(),
          ],
        ),
      ),
    );
  }

  void _showNotificationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Notification'),
          content: Text('You have new notifications!'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void _showSettingsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Settings'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SwitchListTile(
                title: Text('Dark Theme'),
                value: false,
                onChanged: (value) {
                  onThemeChanged(value);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final String date;
  final String body;

  DashboardCard({required this.title, required this.date, required this.body});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      elevation: 5,
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(date, style: TextStyle(color: Colors.white)),
            SizedBox(height: 5),
            Text(body),
          ],
        ),
        trailing: Icon(Icons.link),
        onTap: () {
          // Handle tap action here
        },
      ),
    );
  }
}

class Pagination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(icon: Icon(Icons.chevron_left), onPressed: () {}),
        Text('1', style: TextStyle(fontSize: 18)),
        IconButton(icon: Icon(Icons.chevron_right), onPressed: () {}),
      ],
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Profile')),
      body: Center(child: Text('Profile Information here')),
    );
  }
}
