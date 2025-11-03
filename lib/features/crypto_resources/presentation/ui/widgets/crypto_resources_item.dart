import 'package:flutter/material.dart';
import 'package:renat_crypto_project/features/crypto_resources/presentation/ui/widgets/crypto_resources_item_text.dart';
import 'package:renat_crypto_project/features/crypto_resources/presentation/ui/widgets/crypto_resources_item_text_button.dart';
import 'package:url_launcher/url_launcher.dart';

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

  Future<void> _openLink(String? url) async {
    if (url == null || url.isEmpty) return;
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }

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
            CryptoResourcesItemText(text: title, size: 18),
            CryptoResourcesItemText(text: description, size: 14),
            CryptoResourcesItemTextButton(
              buttonText: link,
              onPressed: () => _openLink(link),
            ),
          ],
        ),
      ),
    );
  }
}
