import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:renat_crypto_project/widgets/crypto_text.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String priceBtc = '';
  String priceEth = '';
  String priceTon = '';

  final channelBtc = kIsWeb
      ? WebSocketChannel.connect(
          Uri.parse('wss://stream.binance.com:9443/ws/btcusdt@trade'),
        )
      : IOWebSocketChannel.connect(
          'wss://stream.binance.com:9443/ws/btcusdt@trade',
        );
  final channelEth = kIsWeb
      ? WebSocketChannel.connect(
          Uri.parse('wss://stream.binance.com:9443/ws/ethusdt@trade'),
        )
      : IOWebSocketChannel.connect(
          'wss://stream.binance.com:9443/ws/ethusdt@trade',
        );

  final channelTon = kIsWeb
      ? WebSocketChannel.connect(
          Uri.parse('wss://stream.binance.com:9443/ws/tonusdt@trade'),
        )
      : IOWebSocketChannel.connect(
          'wss://stream.binance.com:9443/ws/tonusdt@trade',
        );

  void listenBinanceStreams() {
    channelBtc.stream.listen((message) {
      final data = jsonDecode(message.toString());
      if (data is Map) {
        final getData = Map<String, dynamic>.from(data);
        setState(() {
          priceBtc = double.parse(getData['p'].toString()).toStringAsFixed(2);
        });
      }
    });
    channelEth.stream.listen((message) {
      final data = jsonDecode(message.toString());
      if (data is Map) {
        final getData = Map<String, dynamic>.from(data);
        setState(() {
          priceEth = double.parse(getData['p'].toString()).toStringAsFixed(2);
        });
      }
    });
    channelTon.stream.listen((message) {
      final data = jsonDecode(message.toString());
      if (data is Map) {
        final getData = Map<String, dynamic>.from(data);
        setState(() {
          priceTon = double.parse(getData['p'].toString()).toStringAsFixed(3);
        });
      }
    });
  }

  @override
  void initState() {
    listenBinanceStreams();
    super.initState();
  }

  @override
  void dispose() {
    channelBtc.sink.close();
    channelEth.sink.close();
    channelTon.sink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Renat Crypto Project')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10,
          children: [
            CryptoText(
              coin: 'BTC: ',
              value: priceBtc,
              color: Colors.deepOrange,
            ),
            CryptoText(
              coin: 'ETH: ',
              value: priceEth,
              color: Colors.deepPurple,
            ),
            CryptoText(
              coin: 'TON: ',
              value: priceTon,
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
