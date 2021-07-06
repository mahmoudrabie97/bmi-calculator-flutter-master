import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color(0xff0A0E21),
      accentColor: Colors.purple,
      scaffoldBackgroundColor: Color(0xff0A0E21),
      textTheme: TextTheme(body1: TextStyle(color: Colors.white)),
      ),
      home: InputPage(),
    );
  }
}

