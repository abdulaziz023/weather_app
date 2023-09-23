import 'current_conditions.dart';
import 'day_model.dart';

class WeatherModel {
  const WeatherModel({
    required this.queryCost,
    required this.latitude,
    required this.longitude,
    required this.resolvedAddress,
    required this.address,
    required this.timezone,
    required this.tzoffset,
    required this.description,
    required this.days,
    required this.alerts,
    required this.currentConditions,
  });

  final int? queryCost;
  final double? latitude;
  final double? longitude;
  final String? resolvedAddress;
  final String? address;
  final String? timezone;
  final double? tzoffset;
  final String? description;
  final List<Day> days;
  final List<Object> alerts;
  final CurrentConditions? currentConditions;

  factory WeatherModel.fromJson(Map<String, Object?> json) => WeatherModel(
    queryCost: json["queryCost"] as int?,
    latitude: json["latitude"] as double?,
    longitude: json["longitude"] as double?,
    resolvedAddress: json["resolvedAddress"] as String?,
    address: json["address"] as String?,
    timezone: json["timezone"] as String?,
    tzoffset: json["tzoffset"] as double?,
    description: json["description"] as String?,
    days: json["days"] != null
        ? List<Map<String, Object?>>.from(
      json["days"] as List,
    ).map(Day.fromJson).toList()
        : <Day>[],
    alerts: json["alerts"] != null ? List<Object>.from(json["alerts"] as List) : [],
    currentConditions: json["currentConditions"] != null
        ? CurrentConditions.fromJson(
      json["currentConditions"] as Map<String, Object?>,
    )
        : null,
  );

  @override
  String toString() => 'WeatherModel('
      'queryCost: $queryCost, '
      'latitude: $latitude, '
      'longitude: $longitude, '
      'resolvedAddress: $resolvedAddress,'
      'address: $address, '
      'timezone: $timezone, '
      'tzoffset: $tzoffset, '
      'description: $description, '
      'days: $days, '
      'alerts: $alerts, '
      'currentConditions: $currentConditions)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is WeatherModel &&
              runtimeType == other.runtimeType &&
              queryCost == other.queryCost &&
              latitude == other.latitude &&
              longitude == other.longitude &&
              resolvedAddress == other.resolvedAddress &&
              address == other.address &&
              timezone == other.timezone &&
              tzoffset == other.tzoffset &&
              description == other.description &&
              days == other.days &&
              alerts == other.alerts &&
              currentConditions == other.currentConditions;

  @override
  int get hashCode =>
      queryCost.hashCode ^
      latitude.hashCode ^
      longitude.hashCode ^
      resolvedAddress.hashCode ^
      address.hashCode ^
      timezone.hashCode ^
      tzoffset.hashCode ^
      description.hashCode ^
      days.hashCode ^
      alerts.hashCode ^
      currentConditions.hashCode;
}