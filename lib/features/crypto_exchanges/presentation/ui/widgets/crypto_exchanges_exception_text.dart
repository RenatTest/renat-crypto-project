import 'package:flutter/material.dart';

class CryptoExchangesExceptionText extends StatelessWidget {
  const CryptoExchangesExceptionText({required this.exceptionText, super.key});

  final String exceptionText;

  @override
  Widget build(BuildContext context) {
    return Text(
      exceptionText,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 24, color: Colors.deepOrange),
    );
  }
}
