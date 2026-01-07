import 'package:renat_crypto_project/core/network/models_3d_new/models_3d_new_api_base.dart';
import 'package:renat_crypto_project/features/models_3d_new/data/data_source/models/models3d_new_dto/models3d_new_dto.dart';

abstract interface class Models3dNewDataSource {
  Future<Models3dNewDto> getModels3dNew({required String token});
}

class Models3dNewDataSourceImpl implements Models3dNewDataSource {
  Models3dNewDataSourceImpl(this._api);

  final Models3dNewApi _api;

  @override
  Future<Models3dNewDto> getModels3dNew({required String token}) async {
    final result = await _api.getModels3dNew(token: token);

    return result;
  }
}
