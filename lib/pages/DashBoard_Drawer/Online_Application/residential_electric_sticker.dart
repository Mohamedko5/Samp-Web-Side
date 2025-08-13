import 'package:flutter/material.dart';

class ResidentialElectricSticker extends StatefulWidget {
  const ResidentialElectricSticker({super.key});

  @override
  State<ResidentialElectricSticker> createState() =>
      _ResidentialElectricStickerState();
}

class _ResidentialElectricStickerState
    extends State<ResidentialElectricSticker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Residential Electric Sticker")),
    );
  }
}
