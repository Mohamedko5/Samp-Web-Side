import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Bio_Data/biodata_main.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Examination/examination.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Graduation/graduation.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Online_Application/online_application.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Others/other.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Registration/registration.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Services/services.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Student_Account/student_account.dart';
import 'package:smap_web_side/pages/dashboard.dart';

class DashboardDrawer extends StatefulWidget {
  const DashboardDrawer({super.key});

  @override
  State<DashboardDrawer> createState() => _DashboardDrawerState();
}

class _DashboardDrawerState extends State<DashboardDrawer> {
  String expandedSection = '';
  @override
  Widget build(BuildContext context) {
    return ListView(
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

        // Dashbord
        ListTile(
          leading: Icon(Icons.dashboard),
          title: Text('Dashbord'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dashboard()),
            );
          },
        ),

        // Biodata Section
        Biodata(),
        // Registration Section
        Registration(),
        // Exam Section
        Examination(),
        // Graduation Section
        Graduation(),
        // Student Account Section
        StudentAccount(),
        // Other Section
        Other(),
        // Online Application Section
        OnlineApplication(),
        // Services Section
        Services(),
      ],
    );
  }
}
