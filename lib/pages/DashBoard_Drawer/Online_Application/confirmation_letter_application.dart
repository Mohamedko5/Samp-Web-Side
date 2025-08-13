import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/bashboard_drawer.dart';

class ConfirmationLetterApplication extends StatefulWidget {
  const ConfirmationLetterApplication({super.key});

  @override
  State<ConfirmationLetterApplication> createState() =>
      _ConfirmationLetterApplicationState();
}

class _ConfirmationLetterApplicationState
    extends State<ConfirmationLetterApplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Comfirmation Letter Application")),
      drawer: Drawer(child: DashboardDrawer()),
    );
  }
}
