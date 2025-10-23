import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:renat_crypto_project/core/network/crypto_list_api/retrofit/crypto_list_retrofit_api.dart';
import 'package:renat_crypto_project/features/crypto_list/data/data_source/crypto_list_data_source.dart';
import 'package:renat_crypto_project/features/crypto_list/data/repository/crypto_list_repository.dart';

final getIt = GetIt.instance;

void initDI() {
  _registerCryptoListRepository();
}

void _registerCryptoListRepository() {
  getIt.registerLazySingleton<CryptoListRepository>(
    () => CryptoListRepositoryImpl(
      CryptoListDataSourceImpl(
        // CryptoListApiImpl(),
        CryptoListApiImplRetrofit(Dio()),
      ),
    ),
  );
}
