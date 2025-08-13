import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/bashboard_drawer.dart';

class GraduationAuditChecklistGrad extends StatefulWidget {
  const GraduationAuditChecklistGrad({super.key});

  @override
  State<GraduationAuditChecklistGrad> createState() =>
      _GraduationAuditChecklistGradState();
}

class _GraduationAuditChecklistGradState
    extends State<GraduationAuditChecklistGrad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Graduation Audit Checklist")),
      drawer: Drawer(child: DashboardDrawer()),
    );
  }
}
