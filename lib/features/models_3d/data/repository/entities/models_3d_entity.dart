import 'package:renat_crypto_project/features/models_3d/data/data_source/models/models_3d_dto.dart';

class Models3dEntity {
  const Models3dEntity({
    required this.id,
    required this.name,
    required this.image,
    required this.modelAndroid,
    required this.modelIos,
  });

  factory Models3dEntity.fromDTO(Models3dDto dto) {
    return Models3dEntity(
      id: dto.id,
      name: dto.name,
      image: dto.image,
      modelAndroid: dto.modelAndroid,
      modelIos: dto.modelIos,
    );
  }
  final int id;
  final String name;
  final String image;
  final String modelAndroid;
  final String modelIos;
}
