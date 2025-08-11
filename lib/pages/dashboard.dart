import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/body_pages.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool isBiodataExpanded = false;
  bool isRegistrationExpanded = false;
  bool isExamExpanded = false;
  bool isGradExpanded = false;
  bool isstudenAccountExpanded = false;
  bool isotherExpanded = false;
  bool isonlineExpanded = false;
  bool isserviceExpanded = false;
  bool isDashboardExpanded = false;
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
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Biodata'),
              trailing: Icon(
                isBiodataExpanded ? Icons.expand_more : Icons.arrow_back_ios,
                size: 15,
              ),
              onTap: () {
                setState(() {
                  isBiodataExpanded = !isBiodataExpanded;
                });
              },
            ),
            if (isBiodataExpanded) ...[
              ListTile(
                title: Text("Basic Info", style: TextStyle(fontSize: 10)),
                onTap: () {},
              ),
              ListTile(
                title: Text("Beneficiary Info", style: TextStyle(fontSize: 10)),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  "Address and Contact Info",
                  style: TextStyle(fontSize: 10),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  "Sponsorship and Bank Info",
                  style: TextStyle(fontSize: 10),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  "Passport and Visa Info",
                  style: TextStyle(fontSize: 10),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  "COVID-19 Vaccination Status",
                  style: TextStyle(fontSize: 10),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text("Files Repository", style: TextStyle(fontSize: 10)),
                onTap: () {},
              ),
              ListTile(
                title: Text("Face Recognition", style: TextStyle(fontSize: 10)),
                onTap: () {},
              ),
            ],
            ListTile(
              leading: Icon(Icons.app_registration),
              title: Text('Registration'),
              trailing: Icon(
                isRegistrationExpanded
                    ? Icons.expand_more
                    : Icons.arrow_back_ios,
                size: 15,
              ),
              onTap: () {
                setState(() {
                  isRegistrationExpanded = !isRegistrationExpanded;
                });
              },
            ),
            if (isRegistrationExpanded) ...[
              ListTile(
                title: Text(
                  "Course Registration",
                  style: TextStyle(fontSize: 10),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text("Credit Exemption", style: TextStyle(fontSize: 10)),
                onTap: () {},
              ),
              ListTile(
                title: Text("eProject Online", style: TextStyle(fontSize: 10)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.link),
                title: Text(
                  "Industrial Training",
                  style: TextStyle(fontSize: 10),
                ),

                onTap: () {},
              ),
            ],
            ListTile(
              leading: Icon(Icons.bar_chart),
              title: Text('Examniation'),
              trailing: Icon(
                isExamExpanded ? Icons.expand_more : Icons.arrow_back_ios,
                size: 15,
              ),
              onTap: () {
                setState(() {
                  isExamExpanded = !isExamExpanded;
                });
              },
            ),
            if (isExamExpanded) ...[
              ListTile(
                title: Text(
                  "Coures Perfomance",
                  style: TextStyle(fontSize: 10),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  "Examinaions Details",
                  style: TextStyle(fontSize: 10),
                ),
                onTap: () {},
              ),
            ],
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Grauation'),
              trailing: Icon(
                isGradExpanded ? Icons.expand_more : Icons.arrow_back_ios,
                size: 15,
              ),
              onTap: () {
                setState(() {
                  isGradExpanded = !isGradExpanded;
                });
              },
            ),
            if (isGradExpanded) ...[
              ListTile(
                title: Text(
                  "Graduation Audit Checklist",
                  style: TextStyle(fontSize: 10),
                ),
                onTap: () {},
              ),
            ],
            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text('Student Account'),
              trailing: Icon(
                isstudenAccountExpanded
                    ? Icons.expand_more
                    : Icons.arrow_back_ios,
                size: 15,
              ),
              onTap: () {
                setState(() {
                  isstudenAccountExpanded = !isstudenAccountExpanded;
                });
              },
            ),
            if (isstudenAccountExpanded) ...[
              ListTile(
                title: Text(
                  "Financial Statement",
                  style: TextStyle(fontSize: 10),
                ),
                onTap: () {},
              ),
            ],
            ListTile(
              leading: Icon(Icons.directions),
              title: Text('Others'),
              trailing: Icon(
                isotherExpanded ? Icons.expand_more : Icons.arrow_back_ios,
                size: 15,
              ),
              onTap: () {
                setState(() {
                  isotherExpanded = !isotherExpanded;
                });
              },
            ),
            if (isotherExpanded) ...[
              ListTile(
                title: Text(
                  "Activities Transcript",
                  style: TextStyle(fontSize: 10),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  "Residential Record",
                  style: TextStyle(fontSize: 10),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text("Vehicle Record", style: TextStyle(fontSize: 10)),
                onTap: () {},
              ),
              ListTile(
                title: Text("UTHM iQR Reader", style: TextStyle(fontSize: 10)),
                onTap: () {},
              ),
            ],
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('Online Application'),
              trailing: Icon(
                isonlineExpanded ? Icons.expand_more : Icons.arrow_back_ios,
                size: 15,
              ),
              onTap: () {
                setState(() {
                  isonlineExpanded = !isonlineExpanded;
                });
              },
            ),
            if (isonlineExpanded) ...[
              ListTile(
                title: Text(
                  "Residential Electric Sticker",
                  style: TextStyle(fontSize: 10),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  "Admission Application",
                  style: TextStyle(fontSize: 10),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  "Confirmation Letter Application",
                  style: TextStyle(fontSize: 10),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.link),
                title: Text("Counselling", style: TextStyle(fontSize: 10)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.link),
                title: Text("GL Application", style: TextStyle(fontSize: 10)),
                onTap: () {},
              ),
            ],
            ListTile(
              leading: Icon(Icons.power),
              title: Text('Services'),
              trailing: Icon(
                isserviceExpanded ? Icons.expand_more : Icons.arrow_back_ios,
                size: 15,
              ),
              onTap: () {
                setState(() {
                  isserviceExpanded = !isserviceExpanded;
                });
              },
            ),
            if (isserviceExpanded) ...[
              ListTile(
                leading: Icon(Icons.link),
                title: Text("ICT Info", style: TextStyle(fontSize: 10)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.link),
                title: Text("Ezproxy Journal", style: TextStyle(fontSize: 10)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.link),
                title: Text("PTTA e-Resources", style: TextStyle(fontSize: 10)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.link),
                title: Text(
                  "UTHM Bus Tracking",
                  style: TextStyle(fontSize: 10),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.link),
                title: Text("WIFI@UTHM", style: TextStyle(fontSize: 10)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.link),
                title: Text(
                  "Software Downloads",
                  style: TextStyle(fontSize: 10),
                ),
                onTap: () {},
              ),
            ],
          ],
        ),
      ),
      body: BodyPages(),
    );
  }
}
