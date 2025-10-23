import 'package:renat_crypto_project/core/network/crypto_list_api/crypto_list_api_base.dart';
import 'package:renat_crypto_project/features/crypto_list/data/data_source/models/crypto_list_dto/crypto_list_dto/crypto_list_dto.dart';

abstract interface class CryptoListDataSource {
  Future<CryptoListDto> getCryptoList();
}

class CryptoListDataSourceImpl implements CryptoListDataSource {
  CryptoListDataSourceImpl(this._api);

  final CryptoListApi _api;

  @override
  Future<CryptoListDto> getCryptoList() async {
    final result = await _api.getCryptoList();

    return result;
  }
}
