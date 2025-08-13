import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/Student_Account/financial_statemetn.dart';

class StudentAccount extends StatefulWidget {
  const StudentAccount({super.key});

  @override
  State<StudentAccount> createState() => _StudentAccountState();
}

class _StudentAccountState extends State<StudentAccount> {
  String expandedSection = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FinancialStatemetn()),
              );
            },
          ),
        ],
      ],
    );
  }
}
