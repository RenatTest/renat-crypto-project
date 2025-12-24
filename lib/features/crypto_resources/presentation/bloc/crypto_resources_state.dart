import 'package:renat_crypto_project/features/crypto_resources/data/repository/entities/crypto_resources_entity.dart';

class CryptoResourcesState {}

class CryptoResourcesStateInitial extends CryptoResourcesState {}

class CryptoResourcesStateLoading extends CryptoResourcesState {}

class CryptoResourcesStateLoaded extends CryptoResourcesState {
  CryptoResourcesStateLoaded({required this.cryptoResources});

  final List<CryptoResourcesEntity> cryptoResources;
}

class CryptoResourcesStateError extends CryptoResourcesState {
  CryptoResourcesStateError({this.exception});

  final Object? exception;
}
