// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model3.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Model3 _$Model3FromJson(Map<String, dynamic> json) => Model3(
  id: (json['id'] as num?)?.toInt(),
  titleUa: json['titleUa'] as String?,
  titleRu: json['titleRu'] as String?,
  titleEn: json['titleEn'] as String?,
  fileNameUa: json['fileNameUa'] as String?,
  fileNameEn: json['fileNameEn'] as String?,
  fileNameRu: json['fileNameRu'] as String?,
  usdzUa: json['usdzUa'] as String?,
  usdzEn: json['usdzEn'] as String?,
  usdzRu: json['usdzRu'] as String?,
  gifUa: json['gifUa'] as String?,
  gifRu: json['gifRu'] as String?,
  gifEn: json['gifEn'] as String?,
  position: (json['position'] as num?)?.toInt(),
  createdDate: json['createdDate'] == null
      ? null
      : DateTime.parse(json['createdDate'] as String),
  showInMainCameraUa: json['showInMainCameraUa'] as bool?,
  showInMainCameraRu: json['showInMainCameraRu'] as bool?,
  showInMainCameraEn: json['showInMainCameraEn'] as bool?,
  activeUa: json['activeUa'] as bool?,
  activeRu: json['activeRu'] as bool?,
  activeEn: json['activeEn'] as bool?,
  audioUrlEn: json['audioUrlEn'],
  audioUrlRu: json['audioUrlRu'],
  audioUrlUa: json['audioUrlUa'],
  textEn: json['textEn'],
  textRu: json['textRu'],
  textUa: json['textUa'],
);

Map<String, dynamic> _$Model3ToJson(Model3 instance) => <String, dynamic>{
  'id': instance.id,
  'titleUa': instance.titleUa,
  'titleRu': instance.titleRu,
  'titleEn': instance.titleEn,
  'fileNameUa': instance.fileNameUa,
  'fileNameEn': instance.fileNameEn,
  'fileNameRu': instance.fileNameRu,
  'usdzUa': instance.usdzUa,
  'usdzEn': instance.usdzEn,
  'usdzRu': instance.usdzRu,
  'gifUa': instance.gifUa,
  'gifRu': instance.gifRu,
  'gifEn': instance.gifEn,
  'position': instance.position,
  'createdDate': instance.createdDate?.toIso8601String(),
  'showInMainCameraUa': instance.showInMainCameraUa,
  'showInMainCameraRu': instance.showInMainCameraRu,
  'showInMainCameraEn': instance.showInMainCameraEn,
  'activeUa': instance.activeUa,
  'activeRu': instance.activeRu,
  'activeEn': instance.activeEn,
  'audioUrlEn': instance.audioUrlEn,
  'audioUrlRu': instance.audioUrlRu,
  'audioUrlUa': instance.audioUrlUa,
  'textEn': instance.textEn,
  'textRu': instance.textRu,
  'textUa': instance.textUa,
};
