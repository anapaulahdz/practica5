import 'package:flutter/material.dart';
import 'package:practica5/screens/home_screen.dart';
import 'package:practica5/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: getApplicationRoutes(),
      home: HomeScreen(),
    );
  }
}
