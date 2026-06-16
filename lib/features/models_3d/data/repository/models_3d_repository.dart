import 'package:renat_crypto_project/features/models_3d/data/data_source/models_3d_data_source.dart';
import 'package:renat_crypto_project/features/models_3d/data/repository/entities/models_3d_entity.dart';

abstract interface class Models3dRepository {
  Future<List<Models3dEntity>> getModels3d();
}

class Models3dRepositoryImpl implements Models3dRepository {
  Models3dRepositoryImpl(this.dataSource);

  final Models3dDataSource dataSource;

  @override
  Future<List<Models3dEntity>> getModels3d() async {
    final response = await dataSource.getModels3d();
    return response.map(Models3dEntity.fromDTO).toList();
  }
}
