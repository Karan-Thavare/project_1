import 'dart:async';
import 'package:tourist_app/routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 4), (){
      Navigator.pushReplacementNamed(context, AppRoutes.HOME_SCREEN_ROUTE);
    });

    return Scaffold(

      body: Container(
        color: Color(0XFFFFFFFF),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/travel_logo.png"),
            ],
          ),
        ),
      ),
    );
  }
}
