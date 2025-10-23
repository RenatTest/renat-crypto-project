// ignore_for_file: lines_longer_than_80_chars

import 'package:dio/dio.dart';
import 'package:renat_crypto_project/core/network/crypto_list_api/crypto_list_api_base.dart';
import 'package:renat_crypto_project/features/crypto_list/data/data_source/models/crypto_list_dto/crypto_list_dto/crypto_list_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'crypto_list_retrofit_api.g.dart';

@RestApi(baseUrl: 'https://min-api.cryptocompare.com')
abstract class CryptoListApiImplRetrofit implements CryptoListApi {
  factory CryptoListApiImplRetrofit(Dio dio, {String baseUrl}) =
      _CryptoListApiImplRetrofit;

  @override
  @GET('/data/pricemultifull')
  Future<CryptoListDto> getCryptoList({
    // @Query('fsyms') String? fsyms = 'BTC,ETH,BNB,HMSTR,TON,DOGE,USDT,SOL',
    @Query('fsyms')
    String? fsyms =
        'BTC,ETH,TON,USDT,BNB,SOL,XRP,ADA,DOGE,DOT,MATIC,TRX,LTC,AVAX,SHIB,WBTC,LINK,UNI,BUSD,ICP,NEAR,HBAR,APE,FTM,XLM,VET,SAND,EOS,FIL,CHZ,AXS',
    @Query('tsyms') String? tsyms = 'USD',
  });
}
