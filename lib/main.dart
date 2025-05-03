import 'package:flutter/material.dart';
import 'package:slider_widget/home_screen.dart';

void main() =>runApp(BmiCalculation());



class BmiCalculation extends StatelessWidget {
  const BmiCalculation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomeScreen()
    );
  }
}
