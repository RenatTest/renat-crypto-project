import 'package:renat_crypto_project/features/crypto_exchanges/data/data_source/models/crypto_exchanges_dto.dart';

abstract interface class CryptoExchangesApi {
  Stream<List<CryptoExchangesDto>> getCryptoExchanges();
}
