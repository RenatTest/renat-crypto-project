import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:renat_crypto_project/features/models_3d_new/data/repository/models_3d_new_repository.dart';
import 'package:renat_crypto_project/features/models_3d_new/presentation/bloc/models_3d_new_event.dart';
import 'package:renat_crypto_project/features/models_3d_new/presentation/bloc/models_3d_new_state.dart';

class Models3dNewBloc extends Bloc<Models3dNewEvent, Models3dNewState> {
  Models3dNewBloc(this.models3dNewRepository, {required String token})
    : super(Models3dNewStateInitial()) {
    on<Models3dNewEventLoad>((event, emit) async {
      try {
        emit(Models3dNewStateLoading());
        final models3dNew = await models3dNewRepository.getModels3dNew(
          token: 'Bearer $token',
        );
        models3dNew.models3dNewList.items.sort((a, b) => a.id.compareTo(b.id));
        emit(Models3dNewStateLoaded(models3dNew: models3dNew));
      } catch (e) {
        emit(Models3dNewStateError(exception: e));
      }
    });
  }

  final Models3dNewRepository models3dNewRepository;
}
