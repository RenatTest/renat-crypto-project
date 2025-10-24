import 'package:renat_crypto_project/features/crypto_resources/data/data_source/models/crypto_resources_dto/crypto_resources_dto.dart';

class CryptoResourcesEntity {
  const CryptoResourcesEntity({required this.cryptoResources});

  factory CryptoResourcesEntity.fromDTOList(List<CryptoResourcesDto> dto) {
    return CryptoResourcesEntity(
      cryptoResources: dto.map((dto) {
        return {
          'title': dto.title,
          'description': dto.description,
          'link': dto.link,
        };
      }).toList(),
    );
  }

  final List<Map<String, dynamic>> cryptoResources;
}
