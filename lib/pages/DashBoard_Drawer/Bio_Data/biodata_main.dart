import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Bio_Data/address.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Bio_Data/bank_info.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Bio_Data/basic_info.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Bio_Data/beneficiary_info.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Bio_Data/covid_19_sataus.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Bio_Data/face_recognition.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Bio_Data/files_repository.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Bio_Data/passport_visa_info.dart';

class Biodata extends StatefulWidget {
  const Biodata({super.key});

  @override
  State<Biodata> createState() => _BiodataState();
}

class _BiodataState extends State<Biodata> {
  String expandedSection = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
