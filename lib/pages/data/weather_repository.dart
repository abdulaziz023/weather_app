
import 'dart:convert';

import 'package:dio/dio.dart';

import '../../constants/api_constants.dart';
import '../../constants/config.dart';
import '../../models/weather_model/weather_model.dart';
import '../../services/wrapper/i_service_wrapper.dart';

abstract interface class IWeatherRepository {
  abstract final WeatherServiceWrapper wrapper;

  Future<WeatherModel> getWeatherData(String city);
}

class WeatherRepository implements IWeatherRepository {
  WeatherRepository() : wrapper = WeatherServiceWrapper(dio: _dio);

  static final _dio = Dio(BaseOptions(
    baseUrl: Config.weatherBaseUrl,
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    responseType: ResponseType.json,
  ));

  @override
  final WeatherServiceWrapper wrapper;

  @override
  Future<WeatherModel> getWeatherData(String city) async {
    String response = await wrapper.request(
      ApiConst.weatherPath(city),
      queryParameters: ApiConst.weatherParams(
        uGroup: 'us',
        key: Config.weatherApiKey,
      ),
    );

    return WeatherModel.fromJson(jsonDecode(response));
  }
}