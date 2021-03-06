import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //initialRoute: '/',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090C22),
        accentColor: Color(0XFF10AABB),
        scaffoldBackgroundColor: Color(0xFF090C22),
      ),
      home: InputPage(),
//      routes: {
//        '/': (context) => InputPage(),
//      },
    );
  }
}
