// routes for the app
import 'package:app/src/screens/home/index.dart';
import 'package:flutter/material.dart';

Route routes(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => HomeScreen());
    case '/home':
      return MaterialPageRoute(builder: (_) => HomeScreen());
    default:
      return MaterialPageRoute(builder: (_) => HomeScreen());
  }
}
