import 'package:renat_crypto_project/features/models_3d_new/data/data_source/models_3d_new_data_source.dart';
import 'package:renat_crypto_project/features/models_3d_new/data/repository/entities/models_3d_new_entity.dart';

abstract interface class Models3dNewRepository {
  Future<Models3dNewEntity> getModels3dNew({required String token});
}

class Models3dNewRepositoryImpl implements Models3dNewRepository {
  Models3dNewRepositoryImpl(this.dataSource);

  final Models3dNewDataSource dataSource;

  @override
  Future<Models3dNewEntity> getModels3dNew({required String token}) async {
    final response = await dataSource.getModels3dNew(token: token);

    final result = Models3dNewEntity.fromDTO(response);

    return result;
  }
}
