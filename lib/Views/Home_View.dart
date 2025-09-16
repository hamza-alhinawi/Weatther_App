import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/Cubits/get_weather_cubit/get_weather_cubit_states.dart';
import 'package:weather_app/Views/Search_View.dart';
import 'package:weather_app/Widgets/No_Weather_Body.dart';
import 'package:weather_app/Widgets/Weather_Info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    weatherModel;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return SearchView();
                  },
                ),
              );
            },
            icon: Icon(Icons.search, color: Colors.white, size: 30),
          ),
        ],
        backgroundColor: Colors.blue,
        title: Text(
          'Weather',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherStates>(
        builder: (context, state) {
          if (state is WeatherInitialState) {
            return NoWeatherBody();
          } else if (state is WeahterLoadedState) {
            return WeatherInfoBody();
          } else {
            return Text('Opps there was an error');
          }
        },
      ),
    );
  }
}
