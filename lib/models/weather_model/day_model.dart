import 'hour_model.dart';

class Day {
  const Day({
    required this.datetime,
    required this.datetimeEpoch,
    required this.tempmax,
    required this.tempmin,
    required this.temp,
    required this.feelslikemax,
    required this.feelslikemin,
    required this.feelslike,
    required this.dew,
    required this.humidity,
    required this.precip,
    required this.precipprob,
    required this.precipcover,
    required this.preciptype,
    required this.snow,
    required this.snowdepth,
    required this.windgust,
    required this.windspeed,
    required this.winddir,
    required this.pressure,
    required this.cloudcover,
    required this.visibility,
    required this.solarradiation,
    required this.solarenergy,
    required this.uvindex,
    required this.severerisk,
    required this.sunrise,
    required this.sunriseEpoch,
    required this.sunset,
    required this.sunsetEpoch,
    required this.moonphase,
    required this.conditions,
    required this.description,
    required this.icon,
    required this.stations,
    required this.source,
    required this.hours,
  });

  final String? datetime;
  final int? datetimeEpoch;
  final double? tempmax;
  final double? tempmin;
  final double? temp;
  final double? feelslikemax;
  final double? feelslikemin;
  final double? feelslike;
  final double? dew;
  final double? humidity;
  final double? precip;
  final double? precipprob;
  final double? precipcover;
  final List<String> preciptype;
  final double? snow;
  final double? snowdepth;
  final double? windgust;
  final double? windspeed;
  final double? winddir;
  final double? pressure;
  final double? cloudcover;
  final double? visibility;
  final double? solarradiation;
  final double? solarenergy;
  final double? uvindex;
  final double? severerisk;
  final String? sunrise;
  final int? sunriseEpoch;
  final String? sunset;
  final int? sunsetEpoch;
  final double? moonphase;
  final String? conditions;
  final String? description;
  final String? icon;
  final List<String> stations;
  final String? source;
  final List<Hour> hours;

  factory Day.fromJson(Map<String, Object?> json) => Day(
    datetime: json["datetime"] as String?,
    datetimeEpoch: json["datetimeEpoch"] as int?,
    tempmax: json["tempmax"] as double?,
    tempmin: json["tempmin"] as double?,
    temp: json["temp"] as double?,
    feelslikemax: json["feelslikemax"] as double?,
    feelslikemin: json["feelslikemin"] as double?,
    feelslike: json["feelslike"] as double?,
    dew: json["dew"] as double?,
    humidity: json["humidity"] as double?,
    precip: json["precip"] as double?,
    precipprob: json["precipprob"] as double?,
    precipcover: json["precipcover"] as double?,
    preciptype: json["preciptype"] != null ? List<String>.from(json["preciptype"] as List) : [],
    snow: json["snow"] as double?,
    snowdepth: json["snowdepth"] as double?,
    windgust: json["windgust"] as double?,
    windspeed: json["windspeed"] as double?,
    winddir: json["winddir"] as double?,
    pressure: json["pressure"] as double?,
    cloudcover: json["cloudcover"] as double?,
    visibility: json["visibility"] as double?,
    solarradiation: json["solarradiation"] as double?,
    solarenergy: json["solarenergy"] as double?,
    uvindex: json["uvindex"] as double?,
    severerisk: json["severerisk"] as double?,
    sunrise: json["sunrise"] as String?,
    sunriseEpoch: json["sunriseEpoch"] as int?,
    sunset: json["sunset"] as String?,
    sunsetEpoch: json["sunsetEpoch"] as int?,
    moonphase: json["moonphase"] as double?,
    conditions: json["conditions"] as String?,
    description: json["description"] as String?,
    icon: json["icon"] as String?,
    stations: json["stations"] != null ? List<String>.from(json["stations"] as List) : [],
    source: json["source"] as String?,
    hours: json["hours"] != null
        ? List<Map<String, Object?>>.from(
      json["hours"] as List,
    ).map(Hour.fromJson).toList()
        : <Hour>[],
  );

  @override
  String toString() => 'Day('
      'datetime: $datetime, '
      'datetimeEpoch: $datetimeEpoch, '
      'tempmax: $tempmax, '
      'tempmin: $tempmin, '
      'temp: $temp, '
      'feelslikemax: $feelslikemax, '
      'feelslikemin: $feelslikemin, '
      'feelslike: $feelslike, '
      'dew: $dew, '
      'humidity: $humidity, '
      'precip: $precip, '
      'precipprob: $precipprob, '
      'precipcover: $precipcover, '
      'preciptype: $preciptype, '
      'snow: $snow, '
      'snowdepth: $snowdepth, '
      'windgust: $windgust, '
      'windspeed: $windspeed, '
      'winddir: $winddir, '
      'pressure: $pressure, '
      'cloudcover: $cloudcover, '
      'visibility: $visibility, '
      'solarradiation: $solarradiation, '
      'solarenergy: $solarenergy, '
      'uvindex: $uvindex, '
      'severerisk: $severerisk, '
      'sunrise: $sunrise, '
      'sunriseEpoch: $sunriseEpoch, '
      'sunset: $sunset, '
      'sunsetEpoch: $sunsetEpoch, '
      'moonphase: $moonphase, '
      'conditions: $conditions, '
      'description: $description, '
      'icon: $icon, '
      'stations: $stations, '
      'source: $source, '
      'hours: $hours)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Day &&
              runtimeType == other.runtimeType &&
              datetime == other.datetime &&
              datetimeEpoch == other.datetimeEpoch &&
              tempmax == other.tempmax &&
              tempmin == other.tempmin &&
              temp == other.temp &&
              feelslikemax == other.feelslikemax &&
              feelslikemin == other.feelslikemin &&
              feelslike == other.feelslike &&
              dew == other.dew &&
              humidity == other.humidity &&
              precip == other.precip &&
              precipprob == other.precipprob &&
              precipcover == other.precipcover &&
              preciptype == other.preciptype &&
              snow == other.snow &&
              snowdepth == other.snowdepth &&
              windgust == other.windgust &&
              windspeed == other.windspeed &&
              winddir == other.winddir &&
              pressure == other.pressure &&
              cloudcover == other.cloudcover &&
              visibility == other.visibility &&
              solarradiation == other.solarradiation &&
              solarenergy == other.solarenergy &&
              uvindex == other.uvindex &&
              severerisk == other.severerisk &&
              sunrise == other.sunrise &&
              sunriseEpoch == other.sunriseEpoch &&
              sunset == other.sunset &&
              sunsetEpoch == other.sunsetEpoch &&
              moonphase == other.moonphase &&
              conditions == other.conditions &&
              description == other.description &&
              icon == other.icon &&
              stations == other.stations &&
              source == other.source &&
              hours == other.hours;

  @override
  int get hashCode =>
      datetime.hashCode ^
      datetimeEpoch.hashCode ^
      tempmax.hashCode ^
      tempmin.hashCode ^
      temp.hashCode ^
      feelslikemax.hashCode ^
      feelslikemin.hashCode ^
      feelslike.hashCode ^
      dew.hashCode ^
      humidity.hashCode ^
      precip.hashCode ^
      precipprob.hashCode ^
      precipcover.hashCode ^
      preciptype.hashCode ^
      snow.hashCode ^
      snowdepth.hashCode ^
      windgust.hashCode ^
      windspeed.hashCode ^
      winddir.hashCode ^
      pressure.hashCode ^
      cloudcover.hashCode ^
      visibility.hashCode ^
      solarradiation.hashCode ^
      solarenergy.hashCode ^
      uvindex.hashCode ^
      severerisk.hashCode ^
      sunrise.hashCode ^
      sunriseEpoch.hashCode ^
      sunset.hashCode ^
      sunsetEpoch.hashCode ^
      moonphase.hashCode ^
      conditions.hashCode ^
      description.hashCode ^
      icon.hashCode ^
      stations.hashCode ^
      source.hashCode ^
      hours.hashCode;
}