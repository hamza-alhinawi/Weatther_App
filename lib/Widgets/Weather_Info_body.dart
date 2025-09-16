import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Cubits/get_weather_cubit/get_weather_cubit.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});
  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityName,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            'Updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
            style: TextStyle(fontSize: 15),
          ),
          Row(
            children: [
              SizedBox(width: 20),
              SizedBox(
                height: 50,
                width: 50,
                child: Image.network(
                  weatherModel.image!.contains('https:')
                      ? '${weatherModel.image}'
                      : 'https:${weatherModel.image}',
                ),
              ),
              Spacer(flex: 1),

              Text(
                textAlign: TextAlign.center,

                '${weatherModel.temp.round}',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Spacer(flex: 1),
              Column(
                children: [
                  Text(
                    'Maxtamp : ${weatherModel.maxTemp.round()}',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    'Mintemp : ${weatherModel.minTemp.round()}',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              SizedBox(width: 20),
            ],
          ),
          Text(
            weatherModel.weatherCondition,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
