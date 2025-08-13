import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Graduation/Graduation_audit_checklist_grad.dart';

class Graduation extends StatefulWidget {
  const Graduation({super.key});

  @override
  State<Graduation> createState() => _GraduationState();
}

class _GraduationState extends State<Graduation> {
  String expandedSection = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GraduationAuditChecklistGrad(),
                ),
              );
            },
          ),
        ],
      ],
    );
  }
}
