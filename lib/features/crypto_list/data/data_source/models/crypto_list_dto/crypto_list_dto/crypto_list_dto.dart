// ignore_for_file: lines_longer_than_80_chars

import 'package:json_annotation/json_annotation.dart';

part 'crypto_list_dto.g.dart';

@JsonSerializable(createToJson: false)
class CryptoListDto {
  CryptoListDto({required this.raw, required this.display});

  factory CryptoListDto.fromJson(Map<String, dynamic> json) =>
      _$CryptoListDtoFromJson(json);

  @JsonKey(name: 'RAW')
  final Map<String, Raw>? raw;

  @JsonKey(name: 'DISPLAY')
  final Map<String, Display>? display;

  @override
  String toString() {
    return '$raw, $display, ';
  }
}

@JsonSerializable(createToJson: false)
class Display {
  Display({required this.usd});

  factory Display.fromJson(Map<String, dynamic> json) =>
      _$DisplayFromJson(json);

  @JsonKey(name: 'USD')
  final DisplayUsd? usd;

  @override
  String toString() {
    return '$usd, ';
  }
}

@JsonSerializable(createToJson: false)
class DisplayUsd {
  DisplayUsd({
    required this.fromsymbol,
    required this.tosymbol,
    required this.market,
    required this.lastmarket,
    required this.toptiervolume24Hour,
    required this.toptiervolume24Hourto,
    required this.lasttradeid,
    required this.price,
    required this.lastupdate,
    required this.lastvolume,
    required this.lastvolumeto,
    required this.volumehour,
    required this.volumehourto,
    required this.openhour,
    required this.highhour,
    required this.lowhour,
    required this.volumeday,
    required this.volumedayto,
    required this.openday,
    required this.highday,
    required this.lowday,
    required this.volume24Hour,
    required this.volume24Hourto,
    required this.open24Hour,
    required this.high24Hour,
    required this.low24Hour,
    required this.change24Hour,
    required this.changepct24Hour,
    required this.changeday,
    required this.changepctday,
    required this.changehour,
    required this.changepcthour,
    required this.conversiontype,
    required this.conversionsymbol,
    required this.conversionlastupdate,
    required this.supply,
    required this.mktcap,
    required this.mktcappenalty,
    required this.circulatingsupply,
    required this.circulatingsupplymktcap,
    required this.totalvolume24H,
    required this.totalvolume24Hto,
    required this.totaltoptiervolume24H,
    required this.totaltoptiervolume24Hto,
    required this.imageurl,
  });

  factory DisplayUsd.fromJson(Map<String, dynamic> json) =>
      _$DisplayUsdFromJson(json);

  @JsonKey(name: 'FROMSYMBOL')
  final String? fromsymbol;

  @JsonKey(name: 'TOSYMBOL')
  final String? tosymbol;

  @JsonKey(name: 'MARKET')
  final String? market;

  @JsonKey(name: 'LASTMARKET')
  final String? lastmarket;

  @JsonKey(name: 'TOPTIERVOLUME24HOUR')
  final String? toptiervolume24Hour;

  @JsonKey(name: 'TOPTIERVOLUME24HOURTO')
  final String? toptiervolume24Hourto;

  @JsonKey(name: 'LASTTRADEID')
  final String? lasttradeid;

  @JsonKey(name: 'PRICE')
  final String? price;

  @JsonKey(name: 'LASTUPDATE')
  final String? lastupdate;

  @JsonKey(name: 'LASTVOLUME')
  final String? lastvolume;

  @JsonKey(name: 'LASTVOLUMETO')
  final String? lastvolumeto;

  @JsonKey(name: 'VOLUMEHOUR')
  final String? volumehour;

  @JsonKey(name: 'VOLUMEHOURTO')
  final String? volumehourto;

  @JsonKey(name: 'OPENHOUR')
  final String? openhour;

  @JsonKey(name: 'HIGHHOUR')
  final String? highhour;

  @JsonKey(name: 'LOWHOUR')
  final String? lowhour;

  @JsonKey(name: 'VOLUMEDAY')
  final String? volumeday;

  @JsonKey(name: 'VOLUMEDAYTO')
  final String? volumedayto;

  @JsonKey(name: 'OPENDAY')
  final String? openday;

  @JsonKey(name: 'HIGHDAY')
  final String? highday;

  @JsonKey(name: 'LOWDAY')
  final String? lowday;

  @JsonKey(name: 'VOLUME24HOUR')
  final String? volume24Hour;

  @JsonKey(name: 'VOLUME24HOURTO')
  final String? volume24Hourto;

  @JsonKey(name: 'OPEN24HOUR')
  final String? open24Hour;

  @JsonKey(name: 'HIGH24HOUR')
  final String? high24Hour;

  @JsonKey(name: 'LOW24HOUR')
  final String? low24Hour;

  @JsonKey(name: 'CHANGE24HOUR')
  final String? change24Hour;

  @JsonKey(name: 'CHANGEPCT24HOUR')
  final String? changepct24Hour;

  @JsonKey(name: 'CHANGEDAY')
  final String? changeday;

  @JsonKey(name: 'CHANGEPCTDAY')
  final String? changepctday;

  @JsonKey(name: 'CHANGEHOUR')
  final String? changehour;

  @JsonKey(name: 'CHANGEPCTHOUR')
  final String? changepcthour;

  @JsonKey(name: 'CONVERSIONTYPE')
  final String? conversiontype;

  @JsonKey(name: 'CONVERSIONSYMBOL')
  final String? conversionsymbol;

  @JsonKey(name: 'CONVERSIONLASTUPDATE')
  final String? conversionlastupdate;

  @JsonKey(name: 'SUPPLY')
  final String? supply;

  @JsonKey(name: 'MKTCAP')
  final String? mktcap;

  @JsonKey(name: 'MKTCAPPENALTY')
  final String? mktcappenalty;

  @JsonKey(name: 'CIRCULATINGSUPPLY')
  final String? circulatingsupply;

  @JsonKey(name: 'CIRCULATINGSUPPLYMKTCAP')
  final String? circulatingsupplymktcap;

  @JsonKey(name: 'TOTALVOLUME24H')
  final String? totalvolume24H;

  @JsonKey(name: 'TOTALVOLUME24HTO')
  final String? totalvolume24Hto;

  @JsonKey(name: 'TOTALTOPTIERVOLUME24H')
  final String? totaltoptiervolume24H;

  @JsonKey(name: 'TOTALTOPTIERVOLUME24HTO')
  final String? totaltoptiervolume24Hto;

  @JsonKey(name: 'IMAGEURL')
  final String? imageurl;

  @override
  String toString() {
    return '$fromsymbol, $tosymbol, $market, $lastmarket, $toptiervolume24Hour, $toptiervolume24Hourto, $lasttradeid, $price, $lastupdate, $lastvolume, $lastvolumeto, $volumehour, $volumehourto, $openhour, $highhour, $lowhour, $volumeday, $volumedayto, $openday, $highday, $lowday, $volume24Hour, $volume24Hourto, $open24Hour, $high24Hour, $low24Hour, $change24Hour, $changepct24Hour, $changeday, $changepctday, $changehour, $changepcthour, $conversiontype, $conversionsymbol, $conversionlastupdate, $supply, $mktcap, $mktcappenalty, $circulatingsupply, $circulatingsupplymktcap, $totalvolume24H, $totalvolume24Hto, $totaltoptiervolume24H, $totaltoptiervolume24Hto, $imageurl, ';
  }
}

@JsonSerializable(createToJson: false)
class Raw {
  Raw({required this.usd});

  factory Raw.fromJson(Map<String, dynamic> json) => _$RawFromJson(json);

  @JsonKey(name: 'USD')
  final RawUsd? usd;

  @override
  String toString() {
    return '$usd, ';
  }
}

@JsonSerializable(createToJson: false)
class RawUsd {
  RawUsd({
    required this.type,
    required this.market,
    required this.fromsymbol,
    required this.tosymbol,
    required this.flags,
    required this.lastmarket,
    required this.median,
    required this.toptiervolume24Hour,
    required this.toptiervolume24Hourto,
    required this.lasttradeid,
    required this.price,
    required this.lastupdate,
    required this.lastvolume,
    required this.lastvolumeto,
    required this.volumehour,
    required this.volumehourto,
    required this.openhour,
    required this.highhour,
    required this.lowhour,
    required this.volumeday,
    required this.volumedayto,
    required this.openday,
    required this.highday,
    required this.lowday,
    required this.volume24Hour,
    required this.volume24Hourto,
    required this.open24Hour,
    required this.high24Hour,
    required this.low24Hour,
    required this.change24Hour,
    required this.changepct24Hour,
    required this.changeday,
    required this.changepctday,
    required this.changehour,
    required this.changepcthour,
    required this.conversiontype,
    required this.conversionsymbol,
    required this.conversionlastupdate,
    required this.supply,
    required this.mktcap,
    required this.mktcappenalty,
    required this.circulatingsupply,
    required this.circulatingsupplymktcap,
    required this.totalvolume24H,
    required this.totalvolume24Hto,
    required this.totaltoptiervolume24H,
    required this.totaltoptiervolume24Hto,
    required this.imageurl,
  });

  factory RawUsd.fromJson(Map<String, dynamic> json) => _$RawUsdFromJson(json);

  @JsonKey(name: 'TYPE')
  final String? type;

  @JsonKey(name: 'MARKET')
  final String? market;

  @JsonKey(name: 'FROMSYMBOL')
  final String? fromsymbol;

  @JsonKey(name: 'TOSYMBOL')
  final String? tosymbol;

  @JsonKey(name: 'FLAGS')
  final String? flags;

  @JsonKey(name: 'LASTMARKET')
  final String? lastmarket;

  @JsonKey(name: 'MEDIAN')
  final double? median;

  @JsonKey(name: 'TOPTIERVOLUME24HOUR')
  final double? toptiervolume24Hour;

  @JsonKey(name: 'TOPTIERVOLUME24HOURTO')
  final double? toptiervolume24Hourto;

  @JsonKey(name: 'LASTTRADEID')
  final String? lasttradeid;

  @JsonKey(name: 'PRICE')
  final double? price;

  @JsonKey(name: 'LASTUPDATE')
  final int? lastupdate;

  @JsonKey(name: 'LASTVOLUME')
  final double? lastvolume;

  @JsonKey(name: 'LASTVOLUMETO')
  final double? lastvolumeto;

  @JsonKey(name: 'VOLUMEHOUR')
  final double? volumehour;

  @JsonKey(name: 'VOLUMEHOURTO')
  final double? volumehourto;

  @JsonKey(name: 'OPENHOUR')
  final double? openhour;

  @JsonKey(name: 'HIGHHOUR')
  final double? highhour;

  @JsonKey(name: 'LOWHOUR')
  final double? lowhour;

  @JsonKey(name: 'VOLUMEDAY')
  final double? volumeday;

  @JsonKey(name: 'VOLUMEDAYTO')
  final double? volumedayto;

  @JsonKey(name: 'OPENDAY')
  final double? openday;

  @JsonKey(name: 'HIGHDAY')
  final double? highday;

  @JsonKey(name: 'LOWDAY')
  final double? lowday;

  @JsonKey(name: 'VOLUME24HOUR')
  final double? volume24Hour;

  @JsonKey(name: 'VOLUME24HOURTO')
  final double? volume24Hourto;

  @JsonKey(name: 'OPEN24HOUR')
  final double? open24Hour;

  @JsonKey(name: 'HIGH24HOUR')
  final double? high24Hour;

  @JsonKey(name: 'LOW24HOUR')
  final double? low24Hour;

  @JsonKey(name: 'CHANGE24HOUR')
  final double? change24Hour;

  @JsonKey(name: 'CHANGEPCT24HOUR')
  final double? changepct24Hour;

  @JsonKey(name: 'CHANGEDAY')
  final double? changeday;

  @JsonKey(name: 'CHANGEPCTDAY')
  final double? changepctday;

  @JsonKey(name: 'CHANGEHOUR')
  final double? changehour;

  @JsonKey(name: 'CHANGEPCTHOUR')
  final double? changepcthour;

  @JsonKey(name: 'CONVERSIONTYPE')
  final String? conversiontype;

  @JsonKey(name: 'CONVERSIONSYMBOL')
  final String? conversionsymbol;

  @JsonKey(name: 'CONVERSIONLASTUPDATE')
  final int? conversionlastupdate;

  @JsonKey(name: 'SUPPLY')
  final double? supply;

  @JsonKey(name: 'MKTCAP')
  final double? mktcap;

  @JsonKey(name: 'MKTCAPPENALTY')
  final int? mktcappenalty;

  @JsonKey(name: 'CIRCULATINGSUPPLY')
  final double? circulatingsupply;

  @JsonKey(name: 'CIRCULATINGSUPPLYMKTCAP')
  final double? circulatingsupplymktcap;

  @JsonKey(name: 'TOTALVOLUME24H')
  final double? totalvolume24H;

  @JsonKey(name: 'TOTALVOLUME24HTO')
  final double? totalvolume24Hto;

  @JsonKey(name: 'TOTALTOPTIERVOLUME24H')
  final double? totaltoptiervolume24H;

  @JsonKey(name: 'TOTALTOPTIERVOLUME24HTO')
  final double? totaltoptiervolume24Hto;

  @JsonKey(name: 'IMAGEURL')
  final String? imageurl;

  @override
  String toString() {
    return '$type, $market, $fromsymbol, $tosymbol, $flags, $lastmarket, $median, $toptiervolume24Hour, $toptiervolume24Hourto, $lasttradeid, $price, $lastupdate, $lastvolume, $lastvolumeto, $volumehour, $volumehourto, $openhour, $highhour, $lowhour, $volumeday, $volumedayto, $openday, $highday, $lowday, $volume24Hour, $volume24Hourto, $open24Hour, $high24Hour, $low24Hour, $change24Hour, $changepct24Hour, $changeday, $changepctday, $changehour, $changepcthour, $conversiontype, $conversionsymbol, $conversionlastupdate, $supply, $mktcap, $mktcappenalty, $circulatingsupply, $circulatingsupplymktcap, $totalvolume24H, $totalvolume24Hto, $totaltoptiervolume24H, $totaltoptiervolume24Hto, $imageurl, ';
  }
}
