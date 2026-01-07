import 'package:json_annotation/json_annotation.dart';

part 'model3.g.dart';

@JsonSerializable()
class Model3 {
  Model3({
    this.id,
    this.titleUa,
    this.titleRu,
    this.titleEn,
    this.fileNameUa,
    this.fileNameEn,
    this.fileNameRu,
    this.usdzUa,
    this.usdzEn,
    this.usdzRu,
    this.gifUa,
    this.gifRu,
    this.gifEn,
    this.position,
    this.createdDate,
    this.showInMainCameraUa,
    this.showInMainCameraRu,
    this.showInMainCameraEn,
    this.activeUa,
    this.activeRu,
    this.activeEn,
    this.audioUrlEn,
    this.audioUrlRu,
    this.audioUrlUa,
    this.textEn,
    this.textRu,
    this.textUa,
  });

  factory Model3.fromJson(Map<String, dynamic> json) {
    return _$Model3FromJson(json);
  }
  int? id;
  String? titleUa;
  String? titleRu;
  String? titleEn;
  String? fileNameUa;
  String? fileNameEn;
  String? fileNameRu;
  String? usdzUa;
  String? usdzEn;
  String? usdzRu;
  String? gifUa;
  String? gifRu;
  String? gifEn;
  int? position;
  DateTime? createdDate;
  bool? showInMainCameraUa;
  bool? showInMainCameraRu;
  bool? showInMainCameraEn;
  bool? activeUa;
  bool? activeRu;
  bool? activeEn;
  dynamic audioUrlEn;
  dynamic audioUrlRu;
  dynamic audioUrlUa;
  dynamic textEn;
  dynamic textRu;
  dynamic textUa;

  Map<String, dynamic> toJson() => _$Model3ToJson(this);
}
