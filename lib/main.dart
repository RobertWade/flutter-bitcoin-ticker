import 'package:flutter/material.dart';
import 'price_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff21EBA6),
        scaffoldBackgroundColor: Color(0xff161231),
      ),
      home: PriceScreen(),
    );
  }
}