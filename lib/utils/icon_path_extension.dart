import '../styles/app_icons.dart';

extension GetIconPath on String {
  String get weatherToIconPath => switch (this) {
    "clear-day" => AppIcons.icSun,
    "rain" => AppIcons.icCloudyRain,
    "snow" => AppIcons.icCloudy,
    "cloudy" || "partly-cloudy-night" || "clear-night" => AppIcons.icCloudy,
    "partly-cloudy-day" => AppIcons.icCloudySun,
    _ => AppIcons.icCloudyRainSun,
  };
}