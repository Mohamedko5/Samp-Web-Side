import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/Right_Menu/right_menu_contact_us.dart';
import 'package:smap_web_side/pages/Right_Menu/right_menu_noifications.dart';
import 'package:smap_web_side/pages/Right_Menu/right_menu_system_status.dart';
import 'package:smap_web_side/pages/Right_Menu/right_menu_uthm_links.dart';
import 'package:smap_web_side/pages/Right_Menu/right_menu_uthm_qr.dart';

class RightMenuPage extends StatefulWidget {
  const RightMenuPage({super.key});

  @override
  State<RightMenuPage> createState() => _RightMenuPageState();
}

class _RightMenuPageState extends State<RightMenuPage> {
  String expandedSection = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xFFFF5722),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/mohko.jpg"),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('AI240276', style: TextStyle(fontSize: 11)),
                    Text(
                      'Active',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.info, size: 20),
                  title: Text('info', style: TextStyle(fontSize: 13)),
                  trailing: Icon(
                    expandedSection == 'info'
                        ? Icons.expand_more
                        : Icons.arrow_back_ios,
                    size: 9,
                  ),
                  onTap: () {
                    setState(() {
                      expandedSection = expandedSection == 'info' ? '' : 'info';
                    });
                  },
                ),
                if (expandedSection == 'info') ...[
                  ListTile(
                    title: Text(
                      "System Status",
                      style: TextStyle(fontSize: 10),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SystemStatus()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Contact Us", style: TextStyle(fontSize: 10)),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ContactUs()),
                      );
                    },
                  ),
                ],

                // Registration Section
                ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text('Notitficatons', style: TextStyle(fontSize: 13)),

                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Noifications()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.credit_card),
                  title: Text('Pay', style: TextStyle(fontSize: 13)),

                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.link),
                  title: Text('UTHM Links', style: TextStyle(fontSize: 13)),

                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UthmLinkss()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.qr_code),
                  title: Text('UTHM IQR', style: TextStyle(fontSize: 13)),

                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UthmQR()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Log out', style: TextStyle(fontSize: 13)),

                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
