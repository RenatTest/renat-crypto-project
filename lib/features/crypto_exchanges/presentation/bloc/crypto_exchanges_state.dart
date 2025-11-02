class CryptoExchangesState {}

class CryptoExchangesStateInitial extends CryptoExchangesState {}

class CryptoExchangesStateLoading extends CryptoExchangesState {}

class CryptoExchangesStateLoaded extends CryptoExchangesState {
  CryptoExchangesStateLoaded(this.cryptoExchanges);

  final List<Map<String, dynamic>> cryptoExchanges;
}

class CryptoExchangesStateError extends CryptoExchangesState {
  CryptoExchangesStateError({this.exception});

  final Object? exception;
}
