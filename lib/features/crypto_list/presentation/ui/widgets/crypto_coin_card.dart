import 'package:flutter/material.dart';
import 'package:renat_crypto_project/features/crypto_list/presentation/ui/widgets/coin_text.dart';

class CryptoCoinCard extends StatelessWidget {
  const CryptoCoinCard({
    required this.coinName,
    required this.coinPrice,
    required this.coinImage,
    super.key,
  });

  final String coinName;
  final String coinPrice;
  final String coinImage;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(10),
      child: ListTile(
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10,
          children: [
            Image.network(height: 85, coinImage),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CoinText(coinText: coinName),
                CoinText(coinText: '$coinPrice \$'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
