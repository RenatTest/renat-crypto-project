import 'package:flutter/material.dart';

class CryptoText extends StatelessWidget {
  const CryptoText({
    required this.value,
    required this.color,
    required this.coin,
    super.key,
  });

  final String coin;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          coin,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
        value == ''
            ? SizedBox(
                height: 22,
                width: 22,
                child: CircularProgressIndicator(color: color),
              )
            : Text(
                value,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: color,
                ),
              ),
        Text(
          ' \$',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
      ],
    );
  }
}
