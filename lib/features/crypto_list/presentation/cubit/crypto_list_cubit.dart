import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:renat_crypto_project/features/crypto_list/data/repository/crypto_list_repository.dart';
import 'package:renat_crypto_project/features/crypto_list/presentation/cubit/crypto_list_state.dart';

class CryptoListCubit extends Cubit<CryptoListState> {
  CryptoListCubit(this._repository) : super(const CryptoListState.initial());

  final CryptoListRepository _repository;

  Future<void> getCryptoList() async {
    emit(state.copyWith(status: CryptoListStatus.loading));
    try {
      final cryptoList = await _repository.getCryptoList();

      emit(
        state.copyWith(status: CryptoListStatus.loaded, cryptoList: cryptoList),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: CryptoListStatus.error,
          errorMessage: e.toString(),
        ),
      );

      rethrow;
    }
  }
}
