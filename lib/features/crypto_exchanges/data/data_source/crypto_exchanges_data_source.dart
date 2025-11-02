import 'package:renat_crypto_project/core/network/crypto_exchanges_api/crypto_exchanges_api_base.dart';
import 'package:renat_crypto_project/features/crypto_exchanges/data/data_source/models/crypto_exchanges_dto.dart';

abstract interface class CryptoExchangesDataSource {
  Stream<List<CryptoExchangesDto>> getCryptoExchanges();
}

class CryptoExchangesDataSourceImpl implements CryptoExchangesDataSource {
  CryptoExchangesDataSourceImpl(this._api);

  final CryptoExchangesApi _api;

  @override
  Stream<List<CryptoExchangesDto>> getCryptoExchanges() {
    final result = _api.getCryptoExchanges();
    return result;
  }
}
