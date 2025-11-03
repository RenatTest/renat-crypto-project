import 'package:flutter/material.dart';

class CryptoResourcesItemTextButton extends StatelessWidget {
  const CryptoResourcesItemTextButton({
    required this.buttonText,
    required this.onPressed,
    super.key,
  });

  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        buttonText,
        style: const TextStyle(
          fontSize: 14,
          fontFamily: 'Arial',
          fontWeight: FontWeight.w400,
          color: Colors.white,
          decoration: TextDecoration.underline,
          decorationColor: Colors.white,
        ),
      ),
    );
  }
}
