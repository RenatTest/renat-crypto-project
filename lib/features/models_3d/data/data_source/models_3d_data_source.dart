import 'package:renat_crypto_project/core/network/models_3d/models_3d_api_base.dart';
import 'package:renat_crypto_project/features/models_3d/data/data_source/models/models_3d_dto.dart';

abstract interface class Models3dDataSource {
  Future<List<Models3dDto>> getModels3d();
}

class Models3dDataSourceImpl implements Models3dDataSource {
  Models3dDataSourceImpl(this._api);

  final Models3dApi _api;

  @override
  Future<List<Models3dDto>> getModels3d() async {
    final result = await _api.getModels3d();

    return result;
  }
}
