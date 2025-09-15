import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/Models/Weather_Models.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = 'c261ca79f35148edb08185947250109';
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1',
      );
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ?? 'Oops there was an error';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('Opps there was an error ');
    }
  }
}
