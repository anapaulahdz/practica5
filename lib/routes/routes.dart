import 'package:flutter/material.dart';
import 'package:practica5/screens/details_screen.dart';
import 'package:practica5/screens/home_screen.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/details': (BuildContext context) => DetailScreen(),
    '/home': (BuildContext context) => HomeScreen(),
  };
}
