import 'package:renat_crypto_project/features/crypto_resources/data/data_source/models/crypto_resources_dto/crypto_resources_dto.dart';

class CryptoResourcesEntity {
  const CryptoResourcesEntity({
    required this.title,
    required this.link,
    required this.description,
  });

  factory CryptoResourcesEntity.fromDTO(CryptoResourcesDto dto) {
    return CryptoResourcesEntity(
      title: dto.title,
      link: dto.link,
      description: dto.description,
    );
  }
  final String title;
  final String link;
  final String description;
}
