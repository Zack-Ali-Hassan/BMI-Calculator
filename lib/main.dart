import 'package:flutter/material.dart';

import 'screens/home_screnn.dart';

void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        scaffoldBackgroundColor: Color.fromARGB(220, 228, 228, 230),
      ),
      home: HomeScreen(),
    );
  }
}
