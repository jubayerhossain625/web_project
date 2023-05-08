

import 'package:flutter/material.dart';
import 'package:web_project/common/string/route_string.dart';

import '../../presentation/pages/home/home_page.dart';

class AppRoutes {
  Route<dynamic> ongenerateRoute(RouteSettings settings) {
    final arg = settings.arguments;

    switch (settings.name) {
      case RouteString.initialRoute:
        return MaterialPageRoute(builder: (builder) => const HomePage());
      default:
        return errorRoutes();
    }
  }


  errorRoutes() {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error Route Occurred"),
      ),
    );
  }


}

