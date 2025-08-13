import 'package:flutter/material.dart';

class EzproxyJournal extends StatefulWidget {
  const EzproxyJournal({super.key});

  @override
  State<EzproxyJournal> createState() => _EzproxyJournalState();
}

class _EzproxyJournalState extends State<EzproxyJournal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Ezproxy Journal")));
  }
}
