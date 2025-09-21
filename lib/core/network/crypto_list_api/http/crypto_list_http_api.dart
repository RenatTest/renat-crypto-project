import 'dart:convert';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'package:renat_crypto_project/core/network/crypto_list_api/crypto_list_api_base.dart';
import 'package:renat_crypto_project/features/crypto_list/data/data_source/models/crypto_list_dto/crypto_list_dto/crypto_list_dto.dart';

class CryptoListApiImpl implements CryptoListApi {
  @override
  Future<CryptoListDto> getCryptoList() async {
    try {
      final response = await http.get(
        Uri.parse(
          'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,HMSTR,TON,DOGE,USDT,SOL&tsyms=USD',
        ),
      );

      if (response.statusCode == 200) {
        final jsonCryptoList =
            json.decode(response.body) as Map<String, dynamic>;
        final cryptoListData = CryptoListDto.fromJson(jsonCryptoList);
        return cryptoListData;
      } else {
        throw Exception(
          'Failed to fetch crypto list from API, '
          'status code: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw CustomServerError(errorMessage: e.toString());
    }
  }
}

class CustomServerError implements Exception {
  CustomServerError({required this.errorMessage});

  final String errorMessage;

  @override
  String toString() => 'CustomServerError: $errorMessage';
}
