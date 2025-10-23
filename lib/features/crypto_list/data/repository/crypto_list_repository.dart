import 'package:renat_crypto_project/features/crypto_list/data/data_source/crypto_list_data_source.dart';
import 'package:renat_crypto_project/features/crypto_list/data/repository/entities/crypto_list_entity.dart';

abstract interface class CryptoListRepository {
  Future<CryptoListEntity> getCryptoList();
}

class CryptoListRepositoryImpl implements CryptoListRepository {
  CryptoListRepositoryImpl(this.dataSource);

  final CryptoListDataSource dataSource;

  @override
  Future<CryptoListEntity> getCryptoList() async {
    final response = await dataSource.getCryptoList();

    final cryptoListResult = CryptoListEntity.fromDTO(response);

    return cryptoListResult;
  }
}
