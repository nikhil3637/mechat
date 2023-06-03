import 'package:flutter/material.dart';
import 'package:mechat/Screens/HomeScreen/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Sans',
        primaryColor: Color(0xFF075E54),
      ),
      home: HomeScreen()
    );
  }
}