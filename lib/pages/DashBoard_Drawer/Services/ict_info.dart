import 'package:flutter/material.dart';

class IctInfo extends StatefulWidget {
  const IctInfo({super.key});

  @override
  State<IctInfo> createState() => _IctInfoState();
}

class _IctInfoState extends State<IctInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("ICT Info")));
  }
}
