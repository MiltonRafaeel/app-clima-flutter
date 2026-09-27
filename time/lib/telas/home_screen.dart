import 'package:flutter/material.dart';
import 'package:time/widgets/current_weather.dart';
import 'package:time/widgets/weather_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF3B82F6), Color(0xFF1E40AF)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                WeatherHeader(),
                SizedBox(height: 40),
                CurrentWeather(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
