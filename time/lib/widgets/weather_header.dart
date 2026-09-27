import 'package:flutter/material.dart';

class WeatherHeader extends StatelessWidget {
  const WeatherHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.location_on_outlined, color: Colors.white),
            SizedBox(width: 8),
            Text(
              'Cuiabá, MT',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight(700),
              ),
            ),
          ],
        ),
        Text(
          'Atualizado agora',
          style: TextStyle(color: Colors.white70, fontSize: 12),
        ),
      ],
    );
  }
}