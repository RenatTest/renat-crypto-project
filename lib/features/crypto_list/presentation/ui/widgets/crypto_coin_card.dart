import 'package:flutter/material.dart';
import 'package:renat_crypto_project/features/crypto_list/presentation/ui/widgets/coin_change.dart';
import 'package:renat_crypto_project/features/crypto_list/presentation/ui/widgets/coin_text.dart';

class CryptoCoinCard extends StatelessWidget {
  const CryptoCoinCard({
    required this.coinName,
    required this.coinPrice,
    required this.coinImage,
    required this.coinChange,
    super.key,
  });

  final String coinName;
  final String coinPrice;
  final String coinImage;
  final String coinChange;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(10),
      child: ListTile(
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
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
            CoinChange(coinText: coinChange),
          ],
        ),
      ),
    );
  }
}
