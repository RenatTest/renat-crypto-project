import 'package:renat_crypto_project/features/crypto_exchanges/data/data_source/models/crypto_exchanges_dto.dart';

class CryptoExchangesEntity {
  const CryptoExchangesEntity({
    required this.title,
    required this.info,
    required this.link,
    required this.logo,
  });

  factory CryptoExchangesEntity.fromDTO(CryptoExchangesDto dto) {
    return CryptoExchangesEntity(
      title: dto.title,
      info: dto.info,
      link: dto.link,
      logo: dto.logo,
    );
  }
  final String title;
  final String info;
  final String link;
  final String logo;
}
