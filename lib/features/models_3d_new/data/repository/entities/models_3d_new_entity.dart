import 'package:renat_crypto_project/features/models_3d_new/data/data_source/models/models3d_new_dto/models3d_new_dto.dart';

class Models3dNewEntity {
  const Models3dNewEntity({required this.models3dNewList});
  factory Models3dNewEntity.fromDTO(Models3dNewDto dto) {
    return Models3dNewEntity(
      models3dNewList: Models3dNewEntityItemList(
        items:
            dto.model3
                ?.map(
                  (item) => Models3dNewEntityItem(
                    id: item.id?.toString() ?? '',
                    gif: item.gifUa != null || item.gifUa != ''
                        ? 'https://generation-admin.freegen.games/api/file/downloadFile/${item.gifUa}'
                        : '',
                    name: item.titleUa ?? '',
                    modelAndroid:
                        item.fileNameUa != null || item.fileNameUa != ''
                        ? 'https://generation-admin.freegen.games/api/file/downloadFile/${item.fileNameUa}'
                        : '',
                    modelIos: item.usdzUa != null || item.usdzUa != ''
                        ? 'https://generation-admin.freegen.games/api/file/downloadFile/${item.usdzUa}'
                        : '',
                  ),
                )
                .toList() ??
            const [],
      ),
    );
  }

  final Models3dNewEntityItemList models3dNewList;
}

class Models3dNewEntityItem {
  const Models3dNewEntityItem({
    required this.name,
    required this.id,
    required this.gif,
    required this.modelAndroid,
    required this.modelIos,
  });
  final String id;
  final String gif;
  final String name;
  final String modelAndroid;
  final String modelIos;
}

class Models3dNewEntityItemList {
  const Models3dNewEntityItemList({required this.items});
  final List<Models3dNewEntityItem> items;
}
