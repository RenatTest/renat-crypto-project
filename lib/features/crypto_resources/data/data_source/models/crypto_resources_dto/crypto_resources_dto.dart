class CryptoResourcesDto {
  const CryptoResourcesDto({
    required this.id,
    required this.title,
    required this.description,
    required this.link,
  });

  factory CryptoResourcesDto.fromMap(Map<String, dynamic> map) {
    return CryptoResourcesDto(
      id: int.tryParse(map['id'].toString()) ?? 0,
      title: map['title']?.toString() ?? '',
      description: map['description']?.toString() ?? '',
      link: map['link']?.toString() ?? '',
    );
  }

  final int id;
  final String title;
  final String description;
  final String link;
}
