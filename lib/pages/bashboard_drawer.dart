import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Bio_Data/address.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Bio_Data/bank_info.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Bio_Data/basic_info.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Bio_Data/beneficiary_info.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Bio_Data/covid_19_sataus.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Bio_Data/face_recognition.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Bio_Data/files_repository.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Bio_Data/passport_visa_info.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Registration/course_reg.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Registration/credit_exemptio_reg.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Registration/eproject_online_reg.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Registration/industrial_training_reg.dart';

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

        // Biodata Section
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Biodata'),
          trailing: Icon(
            expandedSection == 'Biodata'
                ? Icons.expand_more
                : Icons.arrow_back_ios,
            size: 15,
          ),
          onTap: () {
            setState(() {
              expandedSection = expandedSection == 'Biodata' ? '' : 'Biodata';
            });
          },
        ),
        if (expandedSection == 'Biodata') ...[
          ListTile(
            title: Text("Basic Info", style: TextStyle(fontSize: 10)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BasicInfo()),
              );
            },
          ),
          ListTile(
            title: Text("Beneficiary Info", style: TextStyle(fontSize: 10)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BeneficiaryInfo()),
              );
            },
          ),
          ListTile(
            title: Text(
              "Address and Contact Info",
              style: TextStyle(fontSize: 10),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Address()),
              );
            },
          ),
          ListTile(
            title: Text(
              "Sponsorship and Bank Info",
              style: TextStyle(fontSize: 10),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BankInfo()),
              );
            },
          ),
          ListTile(
            title: Text(
              "Passport and Visa Info",
              style: TextStyle(fontSize: 10),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PassportVisaInfo()),
              );
            },
          ),
          ListTile(
            title: Text(
              "COVID-19 Vaccination Status",
              style: TextStyle(fontSize: 10),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Covid19Sataus()),
              );
            },
          ),
          ListTile(
            title: Text("Files Repository", style: TextStyle(fontSize: 10)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FilesRepository()),
              );
            },
          ),
          ListTile(
            title: Text("Face Recognition", style: TextStyle(fontSize: 10)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FaceRecognition()),
              );
            },
          ),
        ],

        // Registration Section
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

        // Exam Section
        ListTile(
          leading: Icon(Icons.bar_chart),
          title: Text('Examination'),
          trailing: Icon(
            expandedSection == 'Examination'
                ? Icons.expand_more
                : Icons.arrow_back_ios,
            size: 15,
          ),
          onTap: () {
            setState(() {
              expandedSection = expandedSection == 'Examination'
                  ? ''
                  : 'Examination';
            });
          },
        ),
        if (expandedSection == 'Examination') ...[
          ListTile(
            title: Text("Course Performance", style: TextStyle(fontSize: 10)),
            onTap: () {},
          ),
          ListTile(
            title: Text("Examination Details", style: TextStyle(fontSize: 10)),
            onTap: () {},
          ),
        ],

        // Graduation Section
        ListTile(
          leading: Icon(Icons.school),
          title: Text('Graduation'),
          trailing: Icon(
            expandedSection == 'Graduation'
                ? Icons.expand_more
                : Icons.arrow_back_ios,
            size: 15,
          ),
          onTap: () {
            setState(() {
              expandedSection = expandedSection == 'Graduation'
                  ? ''
                  : 'Graduation';
            });
          },
        ),
        if (expandedSection == 'Graduation') ...[
          ListTile(
            title: Text(
              "Graduation Audit Checklist",
              style: TextStyle(fontSize: 10),
            ),
            onTap: () {},
          ),
        ],

        // Student Account Section
        ListTile(
          leading: Icon(Icons.account_balance),
          title: Text('Student Account'),
          trailing: Icon(
            expandedSection == 'StudentAccount'
                ? Icons.expand_more
                : Icons.arrow_back_ios,
            size: 15,
          ),
          onTap: () {
            setState(() {
              expandedSection = expandedSection == 'StudentAccount'
                  ? ''
                  : 'StudentAccount';
            });
          },
        ),
        if (expandedSection == 'StudentAccount') ...[
          ListTile(
            title: Text("Financial Statement", style: TextStyle(fontSize: 10)),
            onTap: () {},
          ),
        ],

        // Other Section
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
            onTap: () {},
          ),
          ListTile(
            title: Text("Residential Record", style: TextStyle(fontSize: 10)),
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

        // Online Application Section
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

        // Services Section
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
            title: Text("UTHM Bus Tracking", style: TextStyle(fontSize: 10)),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text("WIFI@UTHM", style: TextStyle(fontSize: 10)),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text("Software Downloads", style: TextStyle(fontSize: 10)),
            onTap: () {},
          ),
        ],
      ],
    );
  }
}
