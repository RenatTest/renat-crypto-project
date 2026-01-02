import 'package:renat_crypto_project/features/models_3d/data/data_source/models/models_3d_dto.dart';

abstract interface class Models3dApi {
  Future<List<Models3dDto>> getModels3d();
}
