import 'package:renat_crypto_project/features/crypto_exchanges/data/repository/entities/crypto_exchanges_entity.dart';

class CryptoExchangesState {}

class CryptoExchangesStateInitial extends CryptoExchangesState {}

class CryptoExchangesStateLoading extends CryptoExchangesState {}

class CryptoExchangesStateLoaded extends CryptoExchangesState {
  CryptoExchangesStateLoaded(this.cryptoExchanges);

  final List<CryptoExchangesEntity> cryptoExchanges;
}

class CryptoExchangesStateError extends CryptoExchangesState {
  CryptoExchangesStateError({this.exception});

  final Object? exception;
}
