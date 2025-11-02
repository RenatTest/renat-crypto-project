import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:renat_crypto_project/features/crypto_exchanges/data/repository/crypto_exchanges_repository.dart';
import 'package:renat_crypto_project/features/crypto_exchanges/presentation/bloc/crypto_exchanges_event.dart';
import 'package:renat_crypto_project/features/crypto_exchanges/presentation/bloc/crypto_exchanges_state.dart';

class CryptoExchangesBloc
    extends Bloc<CryptoExchangesEvent, CryptoExchangesState> {
  CryptoExchangesBloc(this._repository) : super(CryptoExchangesStateInitial()) {
    on<CryptoExchangesEventLoaded>((event, emit) async {
      emit(CryptoExchangesStateLoading());

      await emit.forEach<List<Map<String, dynamic>>>(
        _repository.getCryptoExchanges(),
        onData: CryptoExchangesStateLoaded.new,
        onError: (error, __) => CryptoExchangesStateError(exception: error),
      );
    });
  }
  final CryptoExchangesRepository _repository;
}
