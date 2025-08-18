import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:renat_crypto_project/features/home_page/cubit/price_coins_cubit_state.dart';
import 'package:renat_crypto_project/features/home_page/cubit/price_coins_repository.dart';

class PriceCoinsCubit extends Cubit<PriceCoinsCubitState> {
  PriceCoinsCubit(this._priceCoinsRepository)
    : super(
        const PriceCoinsCubitState(btcPrice: '', ethPrice: '', tonPrice: ''),
      ) {
    _subscriptions = [
      _priceCoinsRepository.btcPrice.listen((price) {
        emit(state.copyWith(btcPrice: price));
      }),
      _priceCoinsRepository.ethPrice.listen((price) {
        emit(state.copyWith(ethPrice: price));
      }),
      _priceCoinsRepository.tonPrice.listen((price) {
        emit(state.copyWith(tonPrice: price));
      }),
    ];
  }
  final PriceCoinsRepository _priceCoinsRepository;
  late final List<StreamSubscription<String>> _subscriptions;

  @override
  Future<void> close() async {
    for (final sub in _subscriptions) {
      await sub.cancel();
    }
    return super.close();
  }
}
