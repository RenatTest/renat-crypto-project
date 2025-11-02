import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CryptoExchangesPage extends StatelessWidget {
  const CryptoExchangesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Crypto Exchanges', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        child: Text(
          'Crypto Exchanges list',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
