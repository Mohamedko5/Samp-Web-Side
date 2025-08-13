import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Registration/course_reg.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Registration/credit_exemptio_reg.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Registration/eproject_online_reg.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Registration/industrial_training_reg.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String expandedSection = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.app_registration),
          title: Text('Registration'),
          trailing: Icon(
            expandedSection == 'Registration'
                ? Icons.expand_more
                : Icons.arrow_back_ios,
            size: 15,
          ),
          onTap: () {
            setState(() {
              expandedSection = expandedSection == 'Registration'
                  ? ''
                  : 'Registration';
            });
          },
        ),
        if (expandedSection == 'Registration') ...[
          ListTile(
            title: Text("Course Registration", style: TextStyle(fontSize: 10)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CourseReg()),
              );
            },
          ),
          ListTile(
            title: Text("Credit Exemption", style: TextStyle(fontSize: 10)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreditExemptioReg()),
              );
            },
          ),
          ListTile(
            title: Text("eProject Online", style: TextStyle(fontSize: 10)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EprojectOnlineReg()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text("Industrial Training", style: TextStyle(fontSize: 10)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => IndustrialTrainingReg(),
                ),
              );
            },
          ),
        ],
      ],
    );
  }
}
