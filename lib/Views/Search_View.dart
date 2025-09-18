import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/Models/theme_color_model.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Scaffold(
      appBar: AppBar(
        // iconTheme: IconThemeData(),
        title: Text(
          'Search a City',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: TextField(
            style: TextStyle(color: Colors.black),
            onSubmitted: (value) async {
              var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
              getWeatherCubit.getWeather(cityName: value);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 32,
              ),
              hintText: 'Enter City Name',
              labelText: 'Search',
              labelStyle: TextStyle(
                color: ThemeColorModel().getThemeColor(
                  condition: weatherModel?.weatherCondition,
                ),
              ),
              suffix: Icon(Icons.search),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ThemeColorModel().getThemeColor(
                    condition: weatherModel?.weatherCondition,
                  ),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ThemeColorModel().getThemeColor(
                    condition: weatherModel?.weatherCondition,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
