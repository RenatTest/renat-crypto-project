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
  const Models3dNewEntityItem({required this.id, required this.gif});
  final String id;
  final String gif;
}

class Models3dNewEntityItemList {
  const Models3dNewEntityItemList({required this.items});
  final List<Models3dNewEntityItem> items;
}
