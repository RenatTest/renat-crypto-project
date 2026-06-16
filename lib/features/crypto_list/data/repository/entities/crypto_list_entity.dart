import 'package:renat_crypto_project/features/crypto_list/data/data_source/models/crypto_list_dto/crypto_list_dto/crypto_list_dto.dart';

class CryptoListEntity {
  const CryptoListEntity({required this.cryptoList});

  factory CryptoListEntity.fromDto(List<CryptoListDto> dto) {
    return CryptoListEntity(
      cryptoList: dto.map((item) {
        return {
          'coin': item.symbol?.toUpperCase(),
          'price': item.currentPrice,
          'priceChange': item.priceChangePercentage24h,
          'coinImage': item.image,
        };
      }).toList(),
    );
  }

  final List<Map<String, dynamic>>? cryptoList;
}
