
import '../../models/geo_model/geo.dart';
import '../../models/weather_model/weather_model.dart';
import '../../styles/app_icons.dart';
import '../../utils/custom_exceptions.dart';
import '../data/geo_repository.dart';
import '../data/weather_repository.dart';

class MainController {
  MainController({
    required this.geoRepository,
    required this.weatherRepository,
  });

  final IGeoRepository geoRepository;
  final IWeatherRepository weatherRepository;

  WeatherModel? weatherModel;
  GeoModel? geoModel;

  bool get isProgress => weatherModel == null && geoModel == null;

  Future<void> getWeatherData() async {
    try {
      geoModel = await geoRepository.getGeoData();
      weatherModel = await weatherRepository.getWeatherData(geoModel?.city ?? "");
      print(weatherModel);
    } on UnknownException catch (error, stackTrace) {

      print(error);
      print(stackTrace);
    } on ClientException catch (error, stackTrace) {

      print(error);
      print(stackTrace);
    } on ServerException catch (error, stackTrace) {

      print(error);
      print(stackTrace);
    } on Object catch (error, stackTrace) {

      print(error);
      print(stackTrace);
    }
  }
}
