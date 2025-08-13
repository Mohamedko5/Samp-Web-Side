import 'package:flutter/material.dart';
import 'package:smap_web_side/pages/DashBoard_Drawer/bashboard_drawer.dart';

class FaceRecognition extends StatefulWidget {
  const FaceRecognition({super.key});

  @override
  State<FaceRecognition> createState() => _FaceRecognitionState();
}

class _FaceRecognitionState extends State<FaceRecognition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Face Repository")),
      drawer: Drawer(child: DashboardDrawer()),
    );
  }
}
