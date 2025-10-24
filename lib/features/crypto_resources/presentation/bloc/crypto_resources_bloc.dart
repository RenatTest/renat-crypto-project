import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:renat_crypto_project/features/crypto_resources/data/repository/crypto_resources_repository.dart';
import 'package:renat_crypto_project/features/crypto_resources/presentation/bloc/crypto_resources_event.dart';
import 'package:renat_crypto_project/features/crypto_resources/presentation/bloc/crypto_resources_state.dart';

class CryptoResourcesBloc
    extends Bloc<CryptoResourcesEvent, CryptoResourcesState> {
  CryptoResourcesBloc(this.cryptoResourcesRepository)
    : super(CryptoResourcesStateInitial()) {
    on<CryptoResourcesEventLoad>((event, emit) async {
      try {
        if (state is! CryptoResourcesStateLoaded) {
          emit(CryptoResourcesStateLoading());
        }
        final cryptoResources = await cryptoResourcesRepository
            .getCryptoResources();
        emit(CryptoResourcesStateLoaded(cryptoResources: cryptoResources));
      } catch (e) {
        emit(CryptoResourcesStateError(exception: e));
      }
    });
  }

  final CryptoResourcesRepository cryptoResourcesRepository;
}
