import 'package:flutter/material.dart';

class CurrentWeather extends StatelessWidget {

  final IconData icone;
  final int temperatura;
  final String comoEsta;
  final int sensacao;

  const CurrentWeather({
    super.key,
    required this.icone,
    required this.temperatura,
    required this.comoEsta,
    required this.sensacao,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icone, size: 100, color: Colors.white),
        SizedBox(height: 8),
        Text(
          '$temperatura°',
          style: TextStyle(
            color: Colors.white,
            fontSize: 72,
            fontWeight: FontWeight(700),
          ),
        ),
        SizedBox(height: 3),
        Text(
          comoEsta,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight(700),
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Sensação térmica de $sensacao°',
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
