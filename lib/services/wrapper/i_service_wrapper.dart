import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';


import '../api_service.dart';

abstract interface class IServiceWrapper {
  abstract final Dio dio;
  abstract final ApiService apiService;

  Future<String> request(
      String path, {
        Method method = Method.get,
        Map<String, String>? headers,
        Map<String, String>? queryParameters,
        Map<String, Object>? body,
      });
}

class WeatherServiceWrapper implements IServiceWrapper {
  WeatherServiceWrapper({required this.dio}) : apiService = ApiService(dio);

  @override
  @visibleForTesting
  @protected
  final ApiService apiService;

  @override
  @visibleForTesting
  @protected
  final Dio dio;

  @override
  Future<String> request(
      String path, {
        Method method = Method.get,
        Map<String, String>? headers,
        Map<String, String>? queryParameters,
        Map<String, Object>? body,
      }) =>
      apiService.request(
        path,
        method: method,
        headers: headers,
        queryParameters: queryParameters,
        body: body,
      );
}

class GeoServiceWrapper implements IServiceWrapper {
  GeoServiceWrapper({required this.dio}) : apiService = ApiService(dio);

  @override
  @visibleForTesting
  final ApiService apiService;

  @override
  @visibleForTesting
  final Dio dio;

  @override
  Future<String> request(
      String path, {
        Method method = Method.get,
        Map<String, String>? headers,
        Map<String, String>? queryParameters,
        Map<String, Object>? body,
      }) =>
      apiService.request(
        path,
        method: method,
        headers: headers,
        queryParameters: queryParameters,
        body: body,
      );
}