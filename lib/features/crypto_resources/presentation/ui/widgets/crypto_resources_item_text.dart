import 'package:flutter/material.dart';

class CryptoResourcesItemText extends StatelessWidget {
  const CryptoResourcesItemText({
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
        fontFamily: 'Arial',
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    );
  }
}
