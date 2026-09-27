import 'package:flutter/material.dart';
import 'package:time/widgets/current_weather.dart';
import 'package:time/widgets/day_card.dart';
import 'package:time/widgets/info_card.dart';
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
                WeatherHeader(
                  local: 'Cuiaba, MT',
                  atualizado: 'Atualizado agora',
                ),
                SizedBox(height: 40),
                CurrentWeather(
                  icone: Icons.wb_cloudy,
                  temperatura: 29,
                  comoEsta: 'Parcialmente nublado',
                  sensacao: 32,
                ),
                SizedBox(height: 32),
                Row(
                  children: [
                    Expanded(
                      child: InfoCard(valor: '78%', rotulo: 'Umidade'),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: InfoCard(valor: '9 km/h', rotulo: 'Vento'),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: InfoCard(valor: '35%', rotulo: 'Chuva'),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Próximos dias',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight(700),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: DayCard(
                        dia: 'Hoje',
                        icone: Icons.wb_sunny,
                        maxima: 29,
                        minima: 24,
                        destaque: true,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: DayCard(
                        dia: 'Qua',
                        icone: Icons.wb_cloudy,
                        maxima: 30,
                        minima: 24,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: DayCard(
                        dia: 'Qui',
                        icone: Icons.thunderstorm,
                        maxima: 31,
                        minima: 25,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: DayCard(
                        dia: 'Sex',
                        icone: Icons.wb_cloudy,
                        maxima: 30,
                        minima: 24,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
