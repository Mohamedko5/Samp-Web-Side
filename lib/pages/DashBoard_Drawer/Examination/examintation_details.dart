import 'package:flutter/material.dart';

class ExamintationDetails extends StatefulWidget {
  const ExamintationDetails({super.key});

  @override
  State<ExamintationDetails> createState() => _ExamintationDetailsState();
}

class _ExamintationDetailsState extends State<ExamintationDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Examination Details")));
  }
}
