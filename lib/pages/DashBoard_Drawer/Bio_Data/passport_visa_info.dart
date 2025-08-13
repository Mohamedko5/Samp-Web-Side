import 'package:flutter/material.dart';

class PassportVisaInfo extends StatefulWidget {
  const PassportVisaInfo({super.key});

  @override
  State<PassportVisaInfo> createState() => _PassportVisaInfoState();
}

class _PassportVisaInfoState extends State<PassportVisaInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Passport  and Visa Info ")));
  }
}
