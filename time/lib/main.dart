import 'package:flutter/material.dart';
import 'package:time/telas/home_screen.dart';

void main() {
  runApp(Tempo());
}

class Tempo extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
