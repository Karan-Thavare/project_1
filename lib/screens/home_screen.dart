import 'package:flutter/material.dart';
import 'package:tourist_app/routes.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("TourEase")),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png",),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, AppRoutes.TOURIST_PLACE_ROUTE),
                child: Text("Famous Places", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, AppRoutes.SHOPPING_PLACE_ROUTE),
                child: Text("Shopping Places", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, AppRoutes.RESTAURANTS_SCREEN_ROUTE),
                child: Text("Best Restaurants", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, AppRoutes.HOTEL_PAGE_ROUTE),
                child: Text("Famous Hotels", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, AppRoutes.ABOUT_SCREEN_ROUTE),
                child: Text("About Nagpur", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
