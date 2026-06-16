class Models3dDto {
  const Models3dDto({
    required this.id,
    required this.name,
    required this.image,
    required this.modelAndroid,
    required this.modelIos,
  });

  factory Models3dDto.fromMap(Map<String, dynamic> map) {
    return Models3dDto(
      id: int.tryParse(map['id'].toString()) ?? 0,
      name: map['name']?.toString() ?? '',
      image: map['image']?.toString() ?? '',
      modelAndroid: map['modelAndroid']?.toString() ?? '',
      modelIos: map['modelIos']?.toString() ?? '',
    );
  }

  final int id;
  final String name;
  final String image;
  final String modelAndroid;
  final String modelIos;
}
