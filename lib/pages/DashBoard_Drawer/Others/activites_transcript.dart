import 'package:flutter/material.dart';

class ActivitesTranscript extends StatefulWidget {
  const ActivitesTranscript({super.key});

  @override
  State<ActivitesTranscript> createState() => _ActivitesTranscriptState();
}

class _ActivitesTranscriptState extends State<ActivitesTranscript> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Activities Transcript")));
  }
}
