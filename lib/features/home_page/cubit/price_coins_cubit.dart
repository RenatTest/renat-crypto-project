import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:renat_crypto_project/features/home_page/cubit/price_coins_cubit_state.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class PriceCoinsCubit extends Cubit<PriceCoinsCubitState> {
  PriceCoinsCubit()
    : super(
        const PriceCoinsCubitState(btcPrice: '', ethPrice: '', tonPrice: ''),
      ) {
    _channelBtc = kIsWeb
        ? WebSocketChannel.connect(
            Uri.parse('wss://stream.binance.com:9443/ws/btcusdt@trade'),
          )
        : IOWebSocketChannel.connect(
            'wss://stream.binance.com:9443/ws/btcusdt@trade',
          );

    _channelEth = kIsWeb
        ? WebSocketChannel.connect(
            Uri.parse('wss://stream.binance.com:9443/ws/ethusdt@trade'),
          )
        : IOWebSocketChannel.connect(
            'wss://stream.binance.com:9443/ws/ethusdt@trade',
          );

    _channelTon = kIsWeb
        ? WebSocketChannel.connect(
            Uri.parse('wss://stream.binance.com:9443/ws/tonusdt@trade'),
          )
        : IOWebSocketChannel.connect(
            'wss://stream.binance.com:9443/ws/tonusdt@trade',
          );

    _listenStreams();
  }
  late final WebSocketChannel _channelBtc;
  late final WebSocketChannel _channelEth;
  late final WebSocketChannel _channelTon;

  void _listenStreams() {
    _channelBtc.stream.listen((message) {
      final data = jsonDecode(message.toString());
      final price = double.parse(data['p'].toString()).toStringAsFixed(2);
      emit(state.copyWith(btcPrice: price));
    });

    _channelEth.stream.listen((message) {
      final data = jsonDecode(message.toString());
      final price = double.parse(data['p'].toString()).toStringAsFixed(2);
      emit(state.copyWith(ethPrice: price));
    });

    _channelTon.stream.listen((message) {
      final data = jsonDecode(message.toString());
      final price = double.parse(data['p'].toString()).toStringAsFixed(3);
      emit(state.copyWith(tonPrice: price));
    });
  }

  @override
  Future<void> close() {
    _channelBtc.sink.close();
    _channelEth.sink.close();
    _channelTon.sink.close();
    return super.close();
  }
}
