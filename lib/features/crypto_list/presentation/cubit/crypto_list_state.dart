import 'package:renat_crypto_project/features/crypto_list/data/repository/entities/crypto_list_entity.dart';

enum CryptoListStatus { initial, loading, loaded, error }

class CryptoListState {
  const CryptoListState({
    this.status = CryptoListStatus.initial,
    this.cryptoList,
    this.errorMessage,
  });

  const CryptoListState.initial()
    : status = CryptoListStatus.loading,
      cryptoList = null,
      errorMessage = null;

  final CryptoListStatus status;
  final CryptoListEntity? cryptoList;
  final String? errorMessage;

  CryptoListState copyWith({
    CryptoListStatus? status,
    CryptoListEntity? cryptoList,
    String? errorMessage,
  }) {
    return CryptoListState(
      status: status ?? this.status,
      cryptoList: cryptoList ?? this.cryptoList,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
