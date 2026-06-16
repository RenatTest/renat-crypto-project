import 'package:json_annotation/json_annotation.dart';

part 'page.g.dart';

@JsonSerializable()
class Page {
  Page({
    this.size,
    this.itemsOnCurrentPage,
    this.currentPage,
    this.totalItems,
    this.totalPages,
  });
  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);
  int? size;
  int? itemsOnCurrentPage;
  int? currentPage;
  int? totalItems;
  int? totalPages;

  Map<String, dynamic> toJson() => _$PageToJson(this);
}
