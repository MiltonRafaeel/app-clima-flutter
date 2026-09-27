import 'package:flutter/material.dart';

class DayCard extends StatelessWidget {
  final String dia;
  final IconData icone;
  final int maxima;
  final int minima;
  final bool destaque;

  const DayCard({
    super.key,
    required this.dia,
    required this.icone,
    required this.maxima,
    required this.minima,
    this.destaque = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: destaque ? 0.25 : 0.15),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
      ),
      child: Column(
        children: [
          Text(
            dia,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Icon(
            icone,
            color: Colors.white,
            size: 32,
          ),
          const SizedBox(height: 12),
          Text(
            '$maxima° / $minima°',
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}