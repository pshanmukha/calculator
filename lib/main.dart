import 'package:calculator/simplae_calculator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFFFFC107);
    const Color bgColor = Color(0xFF1E1E28);
    return const MaterialApp(
      title: 'Simple Calculator',
      home: SimpleCalculator(),
    );
  }
}
