class CryptoExchangesDto {
  CryptoExchangesDto({
    required this.id,
    required this.title,
    required this.info,
    required this.link,
    required this.logo,
  });

  factory CryptoExchangesDto.fromMap(Map<String, dynamic> exchange) {
    return CryptoExchangesDto(
      id: int.tryParse(exchange['id'].toString()) ?? 0,
      title: exchange['title']?.toString() ?? '',
      info: exchange['info']?.toString() ?? '',
      link: exchange['link']?.toString() ?? '',
      logo: exchange['logo']?.toString() ?? '',
    );
  }

  final int id;
  final String title;
  final String info;
  final String link;
  final String logo;
}
