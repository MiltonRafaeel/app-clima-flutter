import 'package:flutter/material.dart';

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
                Row(
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
                ),
                SizedBox(height: 40),
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
            ),
          ),
        ),
      ),
    );
  }
}