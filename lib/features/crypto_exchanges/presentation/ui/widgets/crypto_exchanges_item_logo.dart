import 'package:flutter/material.dart';

class CryptoExchangesItemLogo extends StatelessWidget {
  const CryptoExchangesItemLogo({required this.logo, super.key});

  final String logo;

  @override
  Widget build(BuildContext context) {
    return Image.network(height: 30, logo);
  }
}
