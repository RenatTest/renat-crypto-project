// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CryptoListDto _$CryptoListDtoFromJson(Map<String, dynamic> json) =>
    CryptoListDto(
      raw: (json['RAW'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Raw.fromJson(e as Map<String, dynamic>)),
      ),
      display: (json['DISPLAY'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Display.fromJson(e as Map<String, dynamic>)),
      ),
    );

Display _$DisplayFromJson(Map<String, dynamic> json) => Display(
  usd: json['USD'] == null
      ? null
      : DisplayUsd.fromJson(json['USD'] as Map<String, dynamic>),
);

DisplayUsd _$DisplayUsdFromJson(Map<String, dynamic> json) => DisplayUsd(
  fromsymbol: json['FROMSYMBOL'] as String?,
  tosymbol: json['TOSYMBOL'] as String?,
  market: json['MARKET'] as String?,
  lastmarket: json['LASTMARKET'] as String?,
  toptiervolume24Hour: json['TOPTIERVOLUME24HOUR'] as String?,
  toptiervolume24Hourto: json['TOPTIERVOLUME24HOURTO'] as String?,
  lasttradeid: json['LASTTRADEID'] as String?,
  price: json['PRICE'] as String?,
  lastupdate: json['LASTUPDATE'] as String?,
  lastvolume: json['LASTVOLUME'] as String?,
  lastvolumeto: json['LASTVOLUMETO'] as String?,
  volumehour: json['VOLUMEHOUR'] as String?,
  volumehourto: json['VOLUMEHOURTO'] as String?,
  openhour: json['OPENHOUR'] as String?,
  highhour: json['HIGHHOUR'] as String?,
  lowhour: json['LOWHOUR'] as String?,
  volumeday: json['VOLUMEDAY'] as String?,
  volumedayto: json['VOLUMEDAYTO'] as String?,
  openday: json['OPENDAY'] as String?,
  highday: json['HIGHDAY'] as String?,
  lowday: json['LOWDAY'] as String?,
  volume24Hour: json['VOLUME24HOUR'] as String?,
  volume24Hourto: json['VOLUME24HOURTO'] as String?,
  open24Hour: json['OPEN24HOUR'] as String?,
  high24Hour: json['HIGH24HOUR'] as String?,
  low24Hour: json['LOW24HOUR'] as String?,
  change24Hour: json['CHANGE24HOUR'] as String?,
  changepct24Hour: json['CHANGEPCT24HOUR'] as String?,
  changeday: json['CHANGEDAY'] as String?,
  changepctday: json['CHANGEPCTDAY'] as String?,
  changehour: json['CHANGEHOUR'] as String?,
  changepcthour: json['CHANGEPCTHOUR'] as String?,
  conversiontype: json['CONVERSIONTYPE'] as String?,
  conversionsymbol: json['CONVERSIONSYMBOL'] as String?,
  conversionlastupdate: json['CONVERSIONLASTUPDATE'] as String?,
  supply: json['SUPPLY'] as String?,
  mktcap: json['MKTCAP'] as String?,
  mktcappenalty: json['MKTCAPPENALTY'] as String?,
  circulatingsupply: json['CIRCULATINGSUPPLY'] as String?,
  circulatingsupplymktcap: json['CIRCULATINGSUPPLYMKTCAP'] as String?,
  totalvolume24H: json['TOTALVOLUME24H'] as String?,
  totalvolume24Hto: json['TOTALVOLUME24HTO'] as String?,
  totaltoptiervolume24H: json['TOTALTOPTIERVOLUME24H'] as String?,
  totaltoptiervolume24Hto: json['TOTALTOPTIERVOLUME24HTO'] as String?,
  imageurl: json['IMAGEURL'] as String?,
);

Raw _$RawFromJson(Map<String, dynamic> json) => Raw(
  usd: json['USD'] == null
      ? null
      : RawUsd.fromJson(json['USD'] as Map<String, dynamic>),
);

RawUsd _$RawUsdFromJson(Map<String, dynamic> json) => RawUsd(
  type: json['TYPE'] as String?,
  market: json['MARKET'] as String?,
  fromsymbol: json['FROMSYMBOL'] as String?,
  tosymbol: json['TOSYMBOL'] as String?,
  flags: json['FLAGS'] as String?,
  lastmarket: json['LASTMARKET'] as String?,
  median: (json['MEDIAN'] as num?)?.toDouble(),
  toptiervolume24Hour: (json['TOPTIERVOLUME24HOUR'] as num?)?.toDouble(),
  toptiervolume24Hourto: (json['TOPTIERVOLUME24HOURTO'] as num?)?.toDouble(),
  lasttradeid: json['LASTTRADEID'] as String?,
  price: (json['PRICE'] as num?)?.toDouble(),
  lastupdate: (json['LASTUPDATE'] as num?)?.toInt(),
  lastvolume: (json['LASTVOLUME'] as num?)?.toDouble(),
  lastvolumeto: (json['LASTVOLUMETO'] as num?)?.toDouble(),
  volumehour: (json['VOLUMEHOUR'] as num?)?.toDouble(),
  volumehourto: (json['VOLUMEHOURTO'] as num?)?.toDouble(),
  openhour: (json['OPENHOUR'] as num?)?.toDouble(),
  highhour: (json['HIGHHOUR'] as num?)?.toDouble(),
  lowhour: (json['LOWHOUR'] as num?)?.toDouble(),
  volumeday: (json['VOLUMEDAY'] as num?)?.toDouble(),
  volumedayto: (json['VOLUMEDAYTO'] as num?)?.toDouble(),
  openday: (json['OPENDAY'] as num?)?.toDouble(),
  highday: (json['HIGHDAY'] as num?)?.toDouble(),
  lowday: (json['LOWDAY'] as num?)?.toDouble(),
  volume24Hour: (json['VOLUME24HOUR'] as num?)?.toDouble(),
  volume24Hourto: (json['VOLUME24HOURTO'] as num?)?.toDouble(),
  open24Hour: (json['OPEN24HOUR'] as num?)?.toDouble(),
  high24Hour: (json['HIGH24HOUR'] as num?)?.toDouble(),
  low24Hour: (json['LOW24HOUR'] as num?)?.toDouble(),
  change24Hour: (json['CHANGE24HOUR'] as num?)?.toDouble(),
  changepct24Hour: (json['CHANGEPCT24HOUR'] as num?)?.toDouble(),
  changeday: (json['CHANGEDAY'] as num?)?.toDouble(),
  changepctday: (json['CHANGEPCTDAY'] as num?)?.toDouble(),
  changehour: (json['CHANGEHOUR'] as num?)?.toDouble(),
  changepcthour: (json['CHANGEPCTHOUR'] as num?)?.toDouble(),
  conversiontype: json['CONVERSIONTYPE'] as String?,
  conversionsymbol: json['CONVERSIONSYMBOL'] as String?,
  conversionlastupdate: (json['CONVERSIONLASTUPDATE'] as num?)?.toInt(),
  supply: (json['SUPPLY'] as num?)?.toDouble(),
  mktcap: (json['MKTCAP'] as num?)?.toDouble(),
  mktcappenalty: (json['MKTCAPPENALTY'] as num?)?.toInt(),
  circulatingsupply: (json['CIRCULATINGSUPPLY'] as num?)?.toDouble(),
  circulatingsupplymktcap: (json['CIRCULATINGSUPPLYMKTCAP'] as num?)
      ?.toDouble(),
  totalvolume24H: (json['TOTALVOLUME24H'] as num?)?.toDouble(),
  totalvolume24Hto: (json['TOTALVOLUME24HTO'] as num?)?.toDouble(),
  totaltoptiervolume24H: (json['TOTALTOPTIERVOLUME24H'] as num?)?.toDouble(),
  totaltoptiervolume24Hto: (json['TOTALTOPTIERVOLUME24HTO'] as num?)
      ?.toDouble(),
  imageurl: json['IMAGEURL'] as String?,
);
