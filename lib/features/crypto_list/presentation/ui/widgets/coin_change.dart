import 'package:flutter/material.dart';

class CoinChange extends StatelessWidget {
  const CoinChange({required this.coinText, super.key});

  final String coinText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 40,
      decoration: BoxDecoration(
        color: double.parse(coinText) > 0 ? Colors.green : Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Text(
        double.parse(coinText) > 0 ? '+$coinText%' : '$coinText%',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
