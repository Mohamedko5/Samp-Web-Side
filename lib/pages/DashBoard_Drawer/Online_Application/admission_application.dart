import 'package:flutter/material.dart';

class AdmissionApplication extends StatefulWidget {
  const AdmissionApplication({super.key});

  @override
  State<AdmissionApplication> createState() => _AdmissionApplicationState();
}

class _AdmissionApplicationState extends State<AdmissionApplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Admission Application")));
  }
}
