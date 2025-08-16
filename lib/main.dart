import 'dart:convert';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:renat_crypto_project/firebase_options.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
// ignore: directives_ordering
import 'package:flutter/foundation.dart' show kIsWeb;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

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
          priceTon = double.parse(getData['p'].toString()).toStringAsFixed(2);
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
            CryptoText(value: 'BTC: $priceBtc', color: Colors.deepOrange),
            CryptoText(value: 'ETH: $priceEth', color: Colors.deepPurple),
            CryptoText(value: 'TON: $priceTon', color: Colors.lightBlueAccent),
          ],
        ),
      ),
    );
  }
}

class CryptoText extends StatelessWidget {
  const CryptoText({required this.value, required this.color, super.key});

  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$value \$',
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: color),
    );
  }
}
