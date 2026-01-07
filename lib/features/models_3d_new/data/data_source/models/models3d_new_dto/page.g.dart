// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Page _$PageFromJson(Map<String, dynamic> json) => Page(
  size: (json['size'] as num?)?.toInt(),
  itemsOnCurrentPage: (json['itemsOnCurrentPage'] as num?)?.toInt(),
  currentPage: (json['currentPage'] as num?)?.toInt(),
  totalItems: (json['totalItems'] as num?)?.toInt(),
  totalPages: (json['totalPages'] as num?)?.toInt(),
);

Map<String, dynamic> _$PageToJson(Page instance) => <String, dynamic>{
  'size': instance.size,
  'itemsOnCurrentPage': instance.itemsOnCurrentPage,
  'currentPage': instance.currentPage,
  'totalItems': instance.totalItems,
  'totalPages': instance.totalPages,
};
