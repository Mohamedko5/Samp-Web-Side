import 'package:flutter/material.dart';

class BeneficiaryInfo extends StatefulWidget {
  const BeneficiaryInfo({super.key});

  @override
  State<BeneficiaryInfo> createState() => _BeneficiaryInfoState();
}

class _BeneficiaryInfoState extends State<BeneficiaryInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Beneficiary Info ")));
  }
}
