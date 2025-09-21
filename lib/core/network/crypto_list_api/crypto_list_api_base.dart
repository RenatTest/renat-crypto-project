import 'package:renat_crypto_project/features/crypto_list/data/data_source/models/crypto_list_dto/crypto_list_dto/crypto_list_dto.dart';

abstract interface class CryptoListApi {
  Future<CryptoListDto> getCryptoList();
}
