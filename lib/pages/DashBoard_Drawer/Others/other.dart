import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Others/activites_transcript.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Others/residential_record.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Others/vehicle_record.dart';
import 'package:smap_web_side/pages/Right_Menu/right_menu_uthm_qr.dart';

class Other extends StatefulWidget {
  const Other({super.key});

  @override
  State<Other> createState() => _OtherState();
}

class _OtherState extends State<Other> {
  String expandedSection = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.directions),
          title: Text('Others'),
          trailing: Icon(
            expandedSection == 'Others'
                ? Icons.expand_more
                : Icons.arrow_back_ios,
            size: 15,
          ),
          onTap: () {
            setState(() {
              expandedSection = expandedSection == 'Others' ? '' : 'Others';
            });
          },
        ),
        if (expandedSection == 'Others') ...[
          ListTile(
            title: Text(
              "Activities Transcript",
              style: TextStyle(fontSize: 10),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ActivitesTranscript()),
              );
            },
          ),
          ListTile(
            title: Text("Residential Record", style: TextStyle(fontSize: 10)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResidentialRecord()),
              );
            },
          ),
          ListTile(
            title: Text("Vehicle Record", style: TextStyle(fontSize: 10)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VehicleRecord()),
              );
            },
          ),
          ListTile(
            title: Text("UTHM iQR Reader", style: TextStyle(fontSize: 10)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UthmQR()),
              );
            },
          ),
        ],
      ],
    );
  }
}
