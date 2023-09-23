class GeoModel {
  const GeoModel({
    this.ip,
    this.continentCode,
    this.continentName,
    this.countryCode2,
    this.countryCode3,
    this.countryName,
    this.countryCapital,
    this.stateProv,
    this.stateCode,
    this.district,
    this.city,
    this.zipcode,
    this.latitude,
    this.longitude,
    this.isEu,
    this.callingCode,
    this.countryTld,
    this.languages,
    this.countryFlag,
    this.geonameId,
    this.isp,
    this.connectionType,
    this.organization,
    this.currency,
    this.timeZone,
  });

  final String? ip;
  final String? continentCode;
  final String? continentName;
  final String? countryCode2;
  final String? countryCode3;
  final String? countryName;
  final String? countryCapital;
  final String? stateProv;
  final String? stateCode;
  final String? district;
  final String? city;
  final String? zipcode;
  final String? latitude;
  final String? longitude;
  final bool? isEu;
  final String? callingCode;
  final String? countryTld;
  final String? languages;
  final String? countryFlag;
  final String? geonameId;
  final String? isp;
  final String? connectionType;
  final String? organization;
  final Currency? currency;
  final TimeZone? timeZone;

  factory GeoModel.fromJson(Map<String, Object?> json) => GeoModel(
    ip: json['ip'] as String?,
    continentCode: json['continent_code'] as String?,
    continentName: json['continent_name'] as String?,
    countryCode2: json['country_code2'] as String?,
    countryCode3: json['country_code3'] as String?,
    countryName: json['country_name'] as String?,
    countryCapital: json['country_capital'] as String?,
    stateProv: json['state_prov'] as String?,
    stateCode: json['state_code'] as String?,
    district: json['district'] as String?,
    city: json['city'] as String?,
    zipcode: json['zipcode'] as String?,
    latitude: json['latitude'] as String?,
    longitude: json['longitude'] as String?,
    isEu: json['is_eu'] as bool?,
    callingCode: json['calling_code'] as String?,
    countryTld: json['country_tld'] as String?,
    languages: json['languages'] as String?,
    countryFlag: json['country_flag'] as String?,
    geonameId: json['geoname_id'] as String?,
    isp: json['isp'] as String?,
    connectionType: json['connection_type'] as String?,
    organization: json['organization'] as String?,
    currency: json['currency'] != null ? Currency.fromJson(json['currency'] as Map<String, Object?>) : null,
    timeZone: json['time_zone'] != null ? TimeZone.fromJson(json['time_zone'] as Map<String, Object?>) : null,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is GeoModel &&
              runtimeType == other.runtimeType &&
              ip == other.ip &&
              continentCode == other.continentCode &&
              continentName == other.continentName &&
              countryCode2 == other.countryCode2 &&
              countryCode3 == other.countryCode3 &&
              countryName == other.countryName &&
              countryCapital == other.countryCapital &&
              stateProv == other.stateProv &&
              stateCode == other.stateCode &&
              district == other.district &&
              city == other.city &&
              zipcode == other.zipcode &&
              latitude == other.latitude &&
              longitude == other.longitude &&
              isEu == other.isEu &&
              callingCode == other.callingCode &&
              countryTld == other.countryTld &&
              languages == other.languages &&
              countryFlag == other.countryFlag &&
              geonameId == other.geonameId &&
              isp == other.isp &&
              connectionType == other.connectionType &&
              organization == other.organization &&
              currency == other.currency &&
              timeZone == other.timeZone;

  @override
  int get hashCode =>
      ip.hashCode ^
      continentCode.hashCode ^
      continentName.hashCode ^
      countryCode2.hashCode ^
      countryCode3.hashCode ^
      countryName.hashCode ^
      countryCapital.hashCode ^
      stateProv.hashCode ^
      stateCode.hashCode ^
      district.hashCode ^
      city.hashCode ^
      zipcode.hashCode ^
      latitude.hashCode ^
      longitude.hashCode ^
      isEu.hashCode ^
      callingCode.hashCode ^
      countryTld.hashCode ^
      languages.hashCode ^
      countryFlag.hashCode ^
      geonameId.hashCode ^
      isp.hashCode ^
      connectionType.hashCode ^
      organization.hashCode ^
      currency.hashCode ^
      timeZone.hashCode;

  @override
  String toString() => 'GeoModel('
      'ip: $ip, '
      'continentCode: $continentCode, '
      'continentName: $continentName, '
      'countryCode2: $countryCode2, '
      'countryCode3: $countryCode3, '
      'countryName: $countryName, '
      'countryCapital: $countryCapital, '
      'stateProv: $stateProv, '
      'stateCode: $stateCode, '
      'district: $district, '
      'city: $city, '
      'zipcode: $zipcode, '
      'latitude: $latitude, '
      'longitude: $longitude, '
      'isEu: $isEu, '
      'callingCode: $callingCode, '
      'countryTld: $countryTld, '
      'languages: $languages, '
      'countryFlag: $countryFlag, '
      'geonameId: $geonameId, '
      'isp: $isp, '
      'connectionType: $connectionType, '
      'organization: $organization, '
      'currency: $currency, '
      'timeZone: $timeZone)';
}

class Currency {
  const Currency({
    this.code,
    this.name,
    this.symbol,
  });

  final String? code;
  final String? name;
  final String? symbol;

  factory Currency.fromJson(Map<String, Object?> json) => Currency(
    code: json['code'] as String?,
    name: json['name'] as String?,
    symbol: json['symbol'] as String?,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Currency &&
              runtimeType == other.runtimeType &&
              code == other.code &&
              name == other.name &&
              symbol == other.symbol;

  @override
  int get hashCode => code.hashCode ^ name.hashCode ^ symbol.hashCode;

  @override
  String toString() => 'Currency(code: $code, name: $name, symbol: $symbol)';
}

class TimeZone {
  const TimeZone({
    this.name,
    this.offset,
    this.offsetWithDst,
    this.currentTime,
    this.currentTimeUnix,
    this.isDst,
    this.dstSavings,
  });

  final String? name;
  final int? offset;
  final int? offsetWithDst;
  final String? currentTime;
  final double? currentTimeUnix;
  final bool? isDst;
  final int? dstSavings;

  factory TimeZone.fromJson(Map<String, Object?> json) => TimeZone(
    name: json['name'] as String?,
    offset: json['offset'] as int?,
    offsetWithDst: json['offset_with_dst'] as int?,
    currentTime: json['current_time'] as String?,
    currentTimeUnix: json['current_time_unix'] as double?,
    isDst: json['is_dst'] as bool?,
    dstSavings: json['dst_savings'] as int?,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is TimeZone &&
              runtimeType == other.runtimeType &&
              name == other.name &&
              offset == other.offset &&
              offsetWithDst == other.offsetWithDst &&
              currentTime == other.currentTime &&
              currentTimeUnix == other.currentTimeUnix &&
              isDst == other.isDst &&
              dstSavings == other.dstSavings;

  @override
  int get hashCode =>
      name.hashCode ^
      offset.hashCode ^
      offsetWithDst.hashCode ^
      currentTime.hashCode ^
      currentTimeUnix.hashCode ^
      isDst.hashCode ^
      dstSavings.hashCode;

  @override
  String toString() => 'TimeZone('
      'name: $name, '
      'offset: $offset, '
      'offsetWithDst: $offsetWithDst, '
      'currentTime: $currentTime, '
      'currentTimeUnix: $currentTimeUnix, '
      'isDst: $isDst, '
      'dstSavings: $dstSavings)';
}