
import 'package:flutter/material.dart';
import 'package:web_project/common/routes/route_app.dart';
import 'package:web_project/common/string/app_color.dart';
import 'package:web_project/common/string/route_string.dart';


class MyWebApp extends StatelessWidget {
  const MyWebApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor:Colors.grey,
          primaryColor: Colors.green),

      initialRoute: RouteString.initialRoute,
      onGenerateRoute: AppRoutes().ongenerateRoute,
    );
  }
}
