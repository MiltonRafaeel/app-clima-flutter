import 'package:flutter/material.dart';
import 'package:time/telas/home_screen.dart';

void main() {
  runApp(new Tempo());
}

class Tempo extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
