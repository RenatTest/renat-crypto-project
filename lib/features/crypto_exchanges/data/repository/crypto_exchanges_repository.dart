import 'package:renat_crypto_project/features/crypto_exchanges/data/data_source/crypto_exchanges_data_source.dart';
import 'package:renat_crypto_project/features/crypto_exchanges/data/repository/entities/crypto_exchanges_entity.dart';

abstract interface class CryptoExchangesRepository {
  Stream<List<CryptoExchangesEntity>> getCryptoExchanges();
}

class CryptoExchangesRepositoryImpl implements CryptoExchangesRepository {
  CryptoExchangesRepositoryImpl(this.dataSource);
  final CryptoExchangesDataSource dataSource;

  @override
  Stream<List<CryptoExchangesEntity>> getCryptoExchanges() {
    return dataSource.getCryptoExchanges().map((dtoList) {
      return dtoList.map(CryptoExchangesEntity.fromDTO).toList();
    });
  }
}
