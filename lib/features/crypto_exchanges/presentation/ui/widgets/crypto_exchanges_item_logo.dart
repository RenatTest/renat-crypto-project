import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CryptoExchangesItemLogo extends StatelessWidget {
  const CryptoExchangesItemLogo({required this.logo, super.key});

  final String logo;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: logo,
      imageBuilder: (context, imageProvider) => Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
      ),
      placeholder: (context, url) => SizedBox(
        height: 30,
        width: 30,
        child: CircularProgressIndicator(
          color: Colors.deepOrange,
          backgroundColor: Colors.white,
        ),
      ),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );
  }
}
