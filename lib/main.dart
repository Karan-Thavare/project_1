import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  runApp(TourEaseApp());
}

class TourEaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TourEase',
      theme: ThemeData(
          primarySwatch: Colors.teal
      ),

      initialRoute: AppRoutes.SPLASH_SCREEN_ROUTE,
      routes: AppRoutes.getRoutes(),
    );
  }
}
