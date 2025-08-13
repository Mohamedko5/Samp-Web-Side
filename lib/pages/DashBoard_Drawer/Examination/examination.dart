import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Examination/course_performance_exm.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Examination/examintation_details.dart';

class Examination extends StatefulWidget {
  const Examination({super.key});

  @override
  State<Examination> createState() => _ExaminationState();
}

class _ExaminationState extends State<Examination> {
  String expandedSection = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CoursePerformanceExm()),
              );
            },
          ),
          ListTile(
            title: Text("Examination Details", style: TextStyle(fontSize: 10)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExamintationDetails()),
              );
            },
          ),
        ],
      ],
    );
  }
}
