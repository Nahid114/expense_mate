import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(ExpenseMateApp());
}

class ExpenseMateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExpenseMate',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: HomeScreen(),
    );
  }
}
