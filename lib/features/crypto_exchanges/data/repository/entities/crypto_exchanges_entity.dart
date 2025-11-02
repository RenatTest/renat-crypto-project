import 'package:renat_crypto_project/features/crypto_exchanges/data/data_source/models/crypto_exchanges_dto.dart';

class CryptoExchangesEntity {
  CryptoExchangesEntity({required this.cryptoExchanges});

  factory CryptoExchangesEntity.fromDTO(List<CryptoExchangesDto> dto) {
    return CryptoExchangesEntity(
      cryptoExchanges: dto.map((dto) {
        return {
          'title': dto.title,
          'info': dto.info,
          'link': dto.link,
          'logo': dto.logo,
        };
      }).toList(),
    );
  }

  final List<Map<String, dynamic>> cryptoExchanges;
}
