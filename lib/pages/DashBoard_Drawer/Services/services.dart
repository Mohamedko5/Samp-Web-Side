import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Services/ezproxy_journal.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Services/ict_info.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Services/pttta_e_resources.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Services/software_downloads.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Services/uthm_bus_tracking.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Services/wifi_uthm.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  String expandedSection = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.power),
          title: Text('Services'),
          trailing: Icon(
            expandedSection == 'Services'
                ? Icons.expand_more
                : Icons.arrow_back_ios,
            size: 15,
          ),
          onTap: () {
            setState(() {
              expandedSection = expandedSection == 'Services' ? '' : 'Services';
            });
          },
        ),
        if (expandedSection == 'Services') ...[
          ListTile(
            leading: Icon(Icons.link),
            title: Text("ICT Info", style: TextStyle(fontSize: 10)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IctInfo()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text("Ezproxy Journal", style: TextStyle(fontSize: 10)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EzproxyJournal()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text("PTTA e-Resources", style: TextStyle(fontSize: 10)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PtttaEResources()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text("UTHM Bus Tracking", style: TextStyle(fontSize: 10)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UthmBusTracking()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text("WIFI@UTHM", style: TextStyle(fontSize: 10)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WifiUthm()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text("Software Downloads", style: TextStyle(fontSize: 10)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SoftwareDownloads()),
              );
            },
          ),
        ],
      ],
    );
  }
}
