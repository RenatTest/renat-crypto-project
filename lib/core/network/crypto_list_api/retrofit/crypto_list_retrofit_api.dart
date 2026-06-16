// ignore_for_file: lines_longer_than_80_chars

import 'package:dio/dio.dart';
import 'package:renat_crypto_project/core/network/crypto_list_api/crypto_list_api_base.dart';
import 'package:renat_crypto_project/features/crypto_list/data/data_source/models/crypto_list_dto/crypto_list_dto/crypto_list_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'crypto_list_retrofit_api.g.dart';

@RestApi(baseUrl: 'https://api.coingecko.com')
abstract class CryptoListApiImplRetrofit implements CryptoListApi {
  factory CryptoListApiImplRetrofit(Dio dio, {String baseUrl}) =
      _CryptoListApiImplRetrofit;

  @override
  @GET('/api/v3/coins/markets')
  Future<List<CryptoListDto>> getCryptoList({
    @Query('vs_currency') String? tsyms = 'usd',
  });
}
