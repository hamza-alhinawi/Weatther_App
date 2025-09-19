import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/Cubits/get_weather_cubit/get_weather_cubit_states.dart';
import 'package:weather_app/Models/theme_color_model.dart';
import 'package:weather_app/Views/Home_View.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherStates>(
          builder: (context, state) {
            var weatherModel = BlocProvider.of<GetWeatherCubit>(
              context,
            ).weatherModel;
            return MaterialApp(
              theme: ThemeData(
                appBarTheme: AppBarTheme(
                  foregroundColor: ThemeColorModel().colorText(context),

                  backgroundColor: ThemeColorModel().getThemeColor(
                    condition: weatherModel?.weatherCondition,
                  ),
                ),
                textTheme: ThemeData.light().textTheme.apply(
                  displayColor: ThemeColorModel().colorText(context),
                  bodyColor: ThemeColorModel().colorText(context),
                ),
                primarySwatch: ThemeColorModel().getThemeColor(
                  condition: BlocProvider.of<GetWeatherCubit>(
                    context,
                  ).weatherModel?.weatherCondition,
                ),
              ),
              debugShowCheckedModeBanner: false,
              home: HomeView(),
            );
          },
        ),
      ),
    );
  }
}
