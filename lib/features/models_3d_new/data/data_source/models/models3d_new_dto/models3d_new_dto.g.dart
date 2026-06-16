// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models3d_new_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Models3dNewDto _$Models3dNewDtoFromJson(Map<String, dynamic> json) =>
    Models3dNewDto(
      model3: (json['model3'] as List<dynamic>?)
          ?.map((e) => Model3.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: json['page'] == null
          ? null
          : Page.fromJson(json['page'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Models3dNewDtoToJson(Models3dNewDto instance) =>
    <String, dynamic>{'model3': instance.model3, 'page': instance.page};
