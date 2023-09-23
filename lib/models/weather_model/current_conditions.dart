class CurrentConditions {
  const CurrentConditions({
    required this.datetime,
    required this.datetimeEpoch,
    required this.temp,
    required this.feelslike,
    required this.humidity,
    required this.dew,
    required this.precip,
    required this.precipprob,
    required this.snow,
    required this.snowdepth,
    required this.preciptype,
    required this.windgust,
    required this.windspeed,
    required this.winddir,
    required this.pressure,
    required this.visibility,
    required this.cloudcover,
    required this.solarradiation,
    required this.solarenergy,
    required this.uvindex,
    required this.conditions,
    required this.icon,
    required this.stations,
    required this.source,
    required this.sunrise,
    required this.sunriseEpoch,
    required this.sunset,
    required this.sunsetEpoch,
    required this.moonphase,
  });

  final String? datetime;
  final int? datetimeEpoch;
  final double? temp;
  final double? feelslike;
  final double? humidity;
  final double? dew;
  final double? precip;
  final double? precipprob;
  final double? snow;
  final double? snowdepth;
  final List<String> preciptype;
  final double? windgust;
  final double? windspeed;
  final double? winddir;
  final double? pressure;
  final double? visibility;
  final double? cloudcover;
  final double? solarradiation;
  final double? solarenergy;
  final double? uvindex;
  final String? conditions;
  final String? icon;
  final List<String> stations;
  final String? source;
  final String? sunrise;
  final int? sunriseEpoch;
  final String? sunset;
  final int? sunsetEpoch;
  final double? moonphase;

  factory CurrentConditions.fromJson(Map<String, Object?> json) => CurrentConditions(
    datetime: json["datetime"] as String?,
    datetimeEpoch: json["datetimeEpoch"] as int?,
    temp: json["temp"] as double?,
    feelslike: json["feelslike"] as double?,
    humidity: json["humidity"] as double?,
    dew: json["dew"] as double?,
    precip: json["precip"] as double?,
    precipprob: json["precipprob"] as double?,
    snow: json["snow"] as double?,
    snowdepth: json["snowdepth"] as double?,
    preciptype: json["preciptype"] != null ? List<String>.from(json["preciptype"] as List) : [],
    windgust: json["windgust"] as double?,
    windspeed: json["windspeed"] as double?,
    winddir: json["winddir"] as double?,
    pressure: json["pressure"] as double?,
    visibility: json["visibility"] as double?,
    cloudcover: json["cloudcover"] as double?,
    solarradiation: json["solarradiation"] as double?,
    solarenergy: json["solarenergy"] as double?,
    uvindex: json["uvindex"] as double?,
    conditions: json["conditions"] as String?,
    icon: json["icon"] as String?,
    stations: json["stations"] != null ? List<String>.from(json["stations"] as List) : [],
    source: json["source"] as String?,
    sunrise: json["sunrise"] as String?,
    sunriseEpoch: json["sunriseEpoch"] as int?,
    sunset: json["sunset"] as String?,
    sunsetEpoch: json["sunsetEpoch"] as int?,
    moonphase: json["moonphase"] as double?,
  );

  @override
  String toString() => 'CurrentConditions('
      'datetime: $datetime, '
      'datetimeEpoch: $datetimeEpoch, '
      'temp: $temp, '
      'feelslike: $feelslike, '
      'humidity: $humidity, '
      'dew: $dew, '
      'precip: $precip, '
      'precipprob: $precipprob, '
      'snow: $snow, '
      'snowdepth: $snowdepth, '
      'preciptype: $preciptype, '
      'windgust: $windgust, '
      'windspeed: $windspeed, '
      'winddir: $winddir, '
      'pressure: $pressure, '
      'visibility: $visibility, '
      'cloudcover: $cloudcover, '
      'solarradiation: $solarradiation, '
      'solarenergy: $solarenergy, '
      'uvindex: $uvindex, '
      'conditions: $conditions, '
      'icon: $icon, '
      'stations: $stations, '
      'source: $source, '
      'sunrise: $sunrise, '
      'sunriseEpoch: $sunriseEpoch, '
      'sunset: $sunset, '
      'sunsetEpoch: $sunsetEpoch, '
      'moonphase: $moonphase)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is CurrentConditions &&
              runtimeType == other.runtimeType &&
              datetime == other.datetime &&
              datetimeEpoch == other.datetimeEpoch &&
              temp == other.temp &&
              feelslike == other.feelslike &&
              humidity == other.humidity &&
              dew == other.dew &&
              precip == other.precip &&
              precipprob == other.precipprob &&
              snow == other.snow &&
              snowdepth == other.snowdepth &&
              preciptype == other.preciptype &&
              windgust == other.windgust &&
              windspeed == other.windspeed &&
              winddir == other.winddir &&
              pressure == other.pressure &&
              visibility == other.visibility &&
              cloudcover == other.cloudcover &&
              solarradiation == other.solarradiation &&
              solarenergy == other.solarenergy &&
              uvindex == other.uvindex &&
              conditions == other.conditions &&
              icon == other.icon &&
              stations == other.stations &&
              source == other.source &&
              sunrise == other.sunrise &&
              sunriseEpoch == other.sunriseEpoch &&
              sunset == other.sunset &&
              sunsetEpoch == other.sunsetEpoch &&
              moonphase == other.moonphase;

  @override
  int get hashCode =>
      datetime.hashCode ^
      datetimeEpoch.hashCode ^
      temp.hashCode ^
      feelslike.hashCode ^
      humidity.hashCode ^
      dew.hashCode ^
      precip.hashCode ^
      precipprob.hashCode ^
      snow.hashCode ^
      snowdepth.hashCode ^
      preciptype.hashCode ^
      windgust.hashCode ^
      windspeed.hashCode ^
      winddir.hashCode ^
      pressure.hashCode ^
      visibility.hashCode ^
      cloudcover.hashCode ^
      solarradiation.hashCode ^
      solarenergy.hashCode ^
      uvindex.hashCode ^
      conditions.hashCode ^
      icon.hashCode ^
      stations.hashCode ^
      source.hashCode ^
      sunrise.hashCode ^
      sunriseEpoch.hashCode ^
      sunset.hashCode ^
      sunsetEpoch.hashCode ^
      moonphase.hashCode;
}