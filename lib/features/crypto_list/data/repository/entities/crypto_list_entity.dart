import 'package:renat_crypto_project/features/crypto_list/data/data_source/models/crypto_list_dto/crypto_list_dto/crypto_list_dto.dart';

class CryptoListEntity {
  const CryptoListEntity({required this.cryptoList});

  factory CryptoListEntity.fromDTO(CryptoListDto dto) {
    return CryptoListEntity(
      cryptoList: dto.raw?.entries.map((item) {
        return {
          'coin': item.value.usd?.fromsymbol,
          'price': item.value.usd?.price,
          'priceOpen24Hour': item.value.usd?.open24Hour,
          'coinImage':
              'https://www.cryptocompare.com/${item.value.usd?.imageurl}',
        };
      }).toList(),
    );
  }

  final List<Map<String, dynamic>>? cryptoList;
}
