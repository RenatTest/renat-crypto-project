// ignore: depend_on_referenced_packages
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:renat_crypto_project/core/network/crypto_list_api/crypto_list_api_base.dart';
import 'package:renat_crypto_project/features/crypto_list/data/data_source/models/crypto_list_dto/crypto_list_dto/crypto_list_dto.dart';

class CryptoListApiImpl implements CryptoListApi {
  @override
  Future<List<CryptoListDto>> getCryptoList() async {
    try {
      final response = await http.get(
        Uri.parse(
          'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd',
        ),
      );

      if (response.statusCode == 200) {
        final jsonCryptoList = json.decode(response.body) as List<dynamic>;

        final cryptoListData = jsonCryptoList
            .map((item) => CryptoListDto.fromJson(item as Map<String, dynamic>))
            .toList();

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
