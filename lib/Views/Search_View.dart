import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/Models/Weather_Models.dart';
import 'package:weather_app/Services/Weather_Service.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Search a City',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              weatherModel = await WeatherService(
                Dio(),
              ).getCurrentWeather(cityName: value);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 32,
              ),
              fillColor: Colors.green,
              hintText: 'Enter City Name',
              labelText: 'Search',
              suffix: Icon(Icons.search),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

WeatherModel? weatherModel;
