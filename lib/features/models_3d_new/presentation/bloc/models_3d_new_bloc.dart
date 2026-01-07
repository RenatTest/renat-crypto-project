import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:renat_crypto_project/features/models_3d_new/data/repository/models_3d_new_repository.dart';
import 'package:renat_crypto_project/features/models_3d_new/presentation/bloc/models_3d_new_event.dart';
import 'package:renat_crypto_project/features/models_3d_new/presentation/bloc/models_3d_new_state.dart';

class Models3dNewBloc extends Bloc<Models3dNewEvent, Models3dNewState> {
  Models3dNewBloc(this.models3dNewRepository)
    : super(Models3dNewStateInitial()) {
    on<Models3dNewEventLoad>((event, emit) async {
      try {
        emit(Models3dNewStateLoading());

        final token =
            // ignore: lines_longer_than_80_chars
            'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJhdWQiOiJVc2VyIE1hbmFnZW1lbnQgUG9ydGFsIiwic3ViIjoiR09PR0xFOnJlbmF0YmFrYWlldkBnbWFpbC5jb20iLCJpc3MiOiJGUkVFR0VOLCBMTEMiLCJleHAiOjE3NzAzNzA4MzksImlhdCI6MTc2NzY5MjQzOSwiYXV0aG9yaXRpZXMiOlsidXNlcjpyZWFkIiwidXNlcjp1cGRhdGUiXX0.CIweMSYgu21Iso1OXT-2k_sLVdu6ht2WmoXOJSof4vES15ApJzsrvhLUq-BsPhq6QX7R-t_R_p-b5OKrZbzmiQ';
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
