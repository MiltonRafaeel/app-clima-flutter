import 'package:flutter/material.dart';

class CurrentWeather extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.wb_cloudy, size: 100, color: Colors.white),
        SizedBox(height: 8),
        Text(
          '29°',
          style: TextStyle(
            color: Colors.white,
            fontSize: 72,
            fontWeight: FontWeight(700),
          ),
        ),
        SizedBox(height: 3),
        Text(
          'Parcialmente nublado',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight(700),
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Sensação térmica de 32°',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 14,
            fontWeight: FontWeight(400),
          ),
        ),
      ],
    );
  }
}