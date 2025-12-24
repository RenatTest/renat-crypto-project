import 'package:flutter/material.dart';

class CryptoExchangesItemText extends StatelessWidget {
  const CryptoExchangesItemText({
    required this.text,
    required this.size,
    super.key,
  });

  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
