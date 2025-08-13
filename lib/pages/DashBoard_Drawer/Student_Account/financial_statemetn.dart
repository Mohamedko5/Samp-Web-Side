import 'package:flutter/material.dart';

class FinancialStatemetn extends StatefulWidget {
  const FinancialStatemetn({super.key});

  @override
  State<FinancialStatemetn> createState() => _FinancialStatemetnState();
}

class _FinancialStatemetnState extends State<FinancialStatemetn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Financial Statement")));
  }
}
