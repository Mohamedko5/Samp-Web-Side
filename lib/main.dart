import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SMAPO Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
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
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
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
            ListTile(
              title: Text("Examination"),
              leading: Icon(Icons.book),
              onTap: () {},
            ),
            ListTile(
              title: Text("Graduation"),
              leading: Icon(Icons.school),
              onTap: () {},
            ),
            ListTile(
              title: Text("Student Account"),
              leading: Icon(Icons.account_balance),
              onTap: () {},
            ),
            ListTile(
              title: Text("Others"),
              leading: Icon(Icons.more_horiz),
              onTap: () {},
            ),
            ListTile(
              title: Text("Online Application"),
              leading: Icon(Icons.web),
              onTap: () {},
            ),
            ListTile(
              title: Text("Services"),
              leading: Icon(Icons.local_activity),
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
                  DashboardCard(
                    title: 'HEBAHAN KEPUTUSAN MUET SESI 1 TAHUN 2025',
                    date: '19 JUN 2025 09:09:26 AM',
                    body:
                        'Hebahan keputusan MUET Sesi 1 tahun 2025. [SILA KLIK DI SINI]',
                  ),
                ],
              ),
            ),
            Pagination(),
          ],
        ),
      ),
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
