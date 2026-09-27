import 'package:flutter/material.dart';

class WeatherHeader extends StatelessWidget {
  
  final String local;
  final String atualizado;

  const WeatherHeader({super.key, required this.local, required this.atualizado});

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
              local,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight(700),
              ),
            ),
          ],
        ),
        Text(
          atualizado,
          style: TextStyle(color: Colors.white70, fontSize: 12),
        ),
      ],
    );
  }
}