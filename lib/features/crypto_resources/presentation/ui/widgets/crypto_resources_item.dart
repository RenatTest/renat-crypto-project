import 'package:flutter/material.dart';

class CryptoResourcesItem extends StatelessWidget {
  const CryptoResourcesItem({
    required this.title,
    required this.description,
    required this.link,
    super.key,
  });

  final String title;
  final String description;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(10),
      child: ListTile(
        subtitle: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontFamily: 'Arial',
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'Arial',
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            Text(
              link,
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'Arial',
                fontWeight: FontWeight.w400,
                color: Colors.white,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
