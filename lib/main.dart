import 'package:flutter/material.dart';
import 'Screens/input_page.dart';
import 'Screens/results_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialApp(
        title: 'BMI Calculator',
        theme: ThemeData.dark().copyWith(
            appBarTheme: const AppBarTheme(
              color: Color(0xFF0A0E21),
            ),
            scaffoldBackgroundColor: const Color(0xFF0A0E21)),
        initialRoute: "/",
        routes: {
          "/": (context) => InputPage(),
          "/result": (context) => ResultsPage(),
        },
      ),
    );
  }
}
