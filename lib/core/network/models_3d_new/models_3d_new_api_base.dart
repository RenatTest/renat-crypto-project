import 'package:renat_crypto_project/features/models_3d_new/data/data_source/models/models3d_new_dto/models3d_new_dto.dart';

abstract interface class Models3dNewApi {
  Future<Models3dNewDto> getModels3dNew({required String token});
}
