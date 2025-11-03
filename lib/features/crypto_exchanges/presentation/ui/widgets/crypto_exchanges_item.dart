import 'package:flutter/material.dart';
import 'package:renat_crypto_project/features/crypto_exchanges/presentation/ui/widgets/crypto_exchanges_item_button.dart';
import 'package:renat_crypto_project/features/crypto_exchanges/presentation/ui/widgets/crypto_exchanges_item_logo.dart';
import 'package:renat_crypto_project/features/crypto_exchanges/presentation/ui/widgets/crypto_exchanges_item_text.dart';
import 'package:url_launcher/url_launcher.dart';

class CryptoExchangesItem extends StatelessWidget {
  const CryptoExchangesItem({
    required this.title,
    required this.logo,
    required this.info,
    required this.link,
    super.key,
  });

  final String title;
  final String logo;
  final String info;
  final String link;

  Future<void> _openLink(String? url) async {
    if (url == null || url.isEmpty) return;
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepOrange,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(5),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          spacing: 10,
          children: [
            Expanded(
              child: Column(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CryptoExchangesItemLogo(logo: logo),
                      CryptoExchangesItemText(text: title, size: 18),
                    ],
                  ),
                  CryptoExchangesItemText(text: info, size: 14),
                  CryptoExchangesItemButton(
                    buttonText: 'Visit',
                    onPressed: () => _openLink(link),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
