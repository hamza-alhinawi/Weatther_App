import 'package:flutter/material.dart';

class ThemeColorModel {
  MaterialColor getThemeColor({required String? condition}) {
    if (condition == null) {
      return Colors.blue;
    }
    switch (condition) {
      case "Sunny":
        return Colors.amber;
      case "Partly cloudy":
        return Colors.lightBlue;
      case "Cloudy":
        return Colors.blueGrey;
      case "Overcast":
        return Colors.grey;
      case "Mist":
        return Colors.cyan;
      case "Fog":
        return Colors.indigo;
      case "Freezing fog":
        return Colors.deepPurple;
      case "Patchy rain possible":
        return Colors.blue;
      case "Light rain":
        return Colors.teal;
      case "Moderate rain":
        return Colors.green;
      case "Heavy rain":
        return Colors.lime;
      case "Rain shower":
        return Colors.lightGreen;
      case "Patchy snow possible":
        return Colors.purple;
      case "Light snow":
        return Colors.pink;
      case "Moderate snow":
        return Colors.red;
      case "Heavy snow":
        return Colors.orange;
      case "Thundery outbreaks possible":
        return Colors.deepOrange;
      case "Rain with thunder":
        return Colors.brown;
      case "Snow with thunder":
        return Colors.yellow;
      case "Blizzard":
        return Colors.blue;
      case "Blowing snow":
        return Colors.green;
      case 'Patchy rain nearby':
        return Colors.indigo;
      default:
        return Colors.blue;
    }
  }
}
