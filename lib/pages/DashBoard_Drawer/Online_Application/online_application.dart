import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Online_Application/admission_application.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Online_Application/confirmation_letter_application.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Online_Application/counselling.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Online_Application/gl_application.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Online_Application/residential_electric_sticker.dart';

class OnlineApplication extends StatefulWidget {
  const OnlineApplication({super.key});

  @override
  State<OnlineApplication> createState() => _OnlineApplicationState();
}

class _OnlineApplicationState extends State<OnlineApplication> {
  String expandedSection = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.edit),
          title: Text('Online Application'),
          trailing: Icon(
            expandedSection == 'OnlineApplication'
                ? Icons.expand_more
                : Icons.arrow_back_ios,
            size: 15,
          ),
          onTap: () {
            setState(() {
              expandedSection = expandedSection == 'OnlineApplication'
                  ? ''
                  : 'OnlineApplication';
            });
          },
        ),
        if (expandedSection == 'OnlineApplication') ...[
          ListTile(
            title: Text(
              "Residential Electric Sticker",
              style: TextStyle(fontSize: 10),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResidentialElectricSticker(),
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              "Admission Application",
              style: TextStyle(fontSize: 10),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdmissionApplication()),
              );
            },
          ),
          ListTile(
            title: Text(
              "Confirmation Letter Application",
              style: TextStyle(fontSize: 10),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ConfirmationLetterApplication(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text("Counselling", style: TextStyle(fontSize: 10)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Counselling()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text("GL Application", style: TextStyle(fontSize: 10)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GlApplication()),
              );
            },
          ),
        ],
      ],
    );
  }
}
