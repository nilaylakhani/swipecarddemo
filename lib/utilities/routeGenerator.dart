import 'package:card_swipe_demo/screens/griddragscreen.dart';
import 'package:card_swipe_demo/screens/homescreen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/gridScreen':
        return MaterialPageRoute(builder: (_) => GridScreen());
      default:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}
