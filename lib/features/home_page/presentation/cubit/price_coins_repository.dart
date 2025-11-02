import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

abstract class PriceCoinsRepository {
  Stream<String> get btcPrice;
  Stream<String> get ethPrice;
  Stream<String> get tonPrice;
  Future<void> closeStreams();
}

class PriceCoinsBinanceRepository implements PriceCoinsRepository {
  PriceCoinsBinanceRepository() {
    _channelBtc = _connect('btcusdt');
    _channelEth = _connect('ethusdt');
    _channelTon = _connect('tonusdt');
  }
  late final WebSocketChannel _channelBtc;
  late final WebSocketChannel _channelEth;
  late final WebSocketChannel _channelTon;

  WebSocketChannel _connect(String coinpair) {
    final url = 'wss://stream.binance.com:9443/ws/$coinpair@trade';
    return kIsWeb
        ? WebSocketChannel.connect(Uri.parse(url))
        : IOWebSocketChannel.connect(url);
  }

  @override
  Stream<String> get btcPrice =>
      _channelBtc.stream.map((event) => _parsePrice(event, 2));

  @override
  Stream<String> get ethPrice =>
      _channelEth.stream.map((event) => _parsePrice(event, 2));

  @override
  Stream<String> get tonPrice =>
      _channelTon.stream.map((event) => _parsePrice(event, 3));

  String _parsePrice(dynamic message, int fractionDigits) {
    final data = jsonDecode(message.toString());
    return double.parse(data['p'].toString()).toStringAsFixed(fractionDigits);
  }

  @override
  Future<void> closeStreams() async {
    await _channelBtc.sink.close();
    await _channelEth.sink.close();
    await _channelTon.sink.close();
  }
}
