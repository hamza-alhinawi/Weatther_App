import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Cubits/get_weather_cubit/get_weather_cubit_states.dart';
import 'package:weather_app/Models/Weather_Models.dart';
import 'package:weather_app/Services/Weather_Service.dart';

class GetWeatherCubit extends Cubit<WeatherStates> {
  GetWeatherCubit() : super(WeatherInitialState());
  WeatherModel? weatherModel;
  Future<void> getWeather({required String cityName}) async {
    emit(WeatherLoadingIndicatorState());
    try {
      weatherModel = await WeatherService(
        Dio(),
      ).getCurrentWeather(cityName: cityName);
      emit(WeahterLoadedState());
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}
