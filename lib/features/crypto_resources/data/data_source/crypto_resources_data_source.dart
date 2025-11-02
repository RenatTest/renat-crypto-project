import 'package:renat_crypto_project/core/network/crypto_resources_api/crypto_resourses_api_base.dart';
import 'package:renat_crypto_project/features/crypto_resources/data/data_source/models/crypto_resources_dto/crypto_resources_dto.dart';

abstract interface class CryptoResourcesDataSource {
  Future<List<CryptoResourcesDto>> getCryptoResources();
}

class CryptoResourcesDataSourceImpl implements CryptoResourcesDataSource {
  CryptoResourcesDataSourceImpl(this._api);

  final CryptoResourcesApi _api;

  @override
  Future<List<CryptoResourcesDto>> getCryptoResources() async {
    final result = await _api.getCryptoResources();

    return result;
  }
}
