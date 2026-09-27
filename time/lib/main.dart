import 'package:flutter/material.dart';
import 'package:time/telas/home_screen.dart';

void main() {
  runApp(Tempo());
}

class Tempo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
