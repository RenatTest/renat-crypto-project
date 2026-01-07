import 'package:json_annotation/json_annotation.dart';

import 'package:renat_crypto_project/features/models_3d_new/data/data_source/models/models3d_new_dto/model3.dart';
import 'package:renat_crypto_project/features/models_3d_new/data/data_source/models/models3d_new_dto/page.dart';

part 'models3d_new_dto.g.dart';

@JsonSerializable()
class Models3dNewDto {
  Models3dNewDto({this.model3, this.page});

  factory Models3dNewDto.fromJson(Map<String, dynamic> json) {
    return _$Models3dNewDtoFromJson(json);
  }
  List<Model3>? model3;
  Page? page;

  Map<String, dynamic> toJson() => _$Models3dNewDtoToJson(this);
}
