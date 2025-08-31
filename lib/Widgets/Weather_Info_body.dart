import 'package:flutter/material.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Alexandria',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'updated at 23:46',
            style: TextStyle(fontSize: 15),
          ),
          Row(
            children: [
              SizedBox(width: 20),
              SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(
                  'assets/images/rainy.png',
                ),
              ),
              Spacer(flex: 1),

              Text(
                textAlign: TextAlign.center,

                '17',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(flex: 1),
              Column(
                children: [
                  Text(
                    'Maxtamp : 24',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    'Mintemp : 15',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              SizedBox(width: 20),
            ],
          ),
          Text(
            'Ligh Rain',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
