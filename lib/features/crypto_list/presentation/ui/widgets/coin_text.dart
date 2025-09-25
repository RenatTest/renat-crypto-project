import 'package:flutter/material.dart';

class CoinText extends StatelessWidget {
  const CoinText({required this.coinText, super.key});

  final String coinText;

  @override
  Widget build(BuildContext context) {
    return Text(
      coinText,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
