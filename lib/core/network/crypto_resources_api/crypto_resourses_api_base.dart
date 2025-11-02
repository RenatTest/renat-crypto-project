import 'package:renat_crypto_project/features/crypto_resources/data/data_source/models/crypto_resources_dto/crypto_resources_dto.dart';

abstract interface class CryptoResourcesApi {
  Future<List<CryptoResourcesDto>> getCryptoResources();
}
