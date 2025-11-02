import 'package:renat_crypto_project/features/crypto_resources/data/data_source/crypto_resources_data_source.dart';
import 'package:renat_crypto_project/features/crypto_resources/data/repository/entities/crypto_resources_entity.dart';

abstract interface class CryptoResourcesRepository {
  Future<List<CryptoResourcesEntity>> getCryptoResources();
}

class CryptoResourcesRepositoryImpl implements CryptoResourcesRepository {
  CryptoResourcesRepositoryImpl(this.dataSource);

  final CryptoResourcesDataSource dataSource;

  @override
  Future<List<CryptoResourcesEntity>> getCryptoResources() async {
    final response = await dataSource.getCryptoResources();
    return response.map(CryptoResourcesEntity.fromDTO).toList();
  }
}
