import 'package:renat_crypto_project/features/crypto_resources/data/data_source/crypto_resources_data_source.dart';
import 'package:renat_crypto_project/features/crypto_resources/data/repository/entities/crypto_resources_entity.dart';

abstract interface class CryptoResourcesRepository {
  Future<List<Map<String, dynamic>>> getCryptoResources();
}

class CryptoResourcesRepositoryImpl implements CryptoResourcesRepository {
  CryptoResourcesRepositoryImpl(this.dataSource);

  final CryptoResourcesDataSource dataSource;

  @override
  Future<List<Map<String, dynamic>>> getCryptoResources() async {
    final response = await dataSource.getCryptoResources();
    final entity = CryptoResourcesEntity.fromDTOList(response);

    return entity.cryptoResources;
  }
}
