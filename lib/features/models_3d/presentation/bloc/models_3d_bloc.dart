import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:renat_crypto_project/features/models_3d/data/repository/models_3d_repository.dart';
import 'package:renat_crypto_project/features/models_3d/presentation/bloc/models_3d_event.dart';
import 'package:renat_crypto_project/features/models_3d/presentation/bloc/models_3d_state.dart';

class Models3dBloc extends Bloc<Models3dEvent, Models3dState> {
  Models3dBloc(this.models3dRepository) : super(Models3dStateInitial()) {
    on<Models3dEventLoad>((event, emit) async {
      try {
        emit(Models3dStateLoading());
        final models3d = await models3dRepository.getModels3d();
        models3d.sort((a, b) => a.id.compareTo(b.id));
        emit(Models3dStateLoaded(models3d: models3d));
      } catch (e) {
        emit(Models3dStateError(exception: e));
      }
    });
  }

  final Models3dRepository models3dRepository;
}
