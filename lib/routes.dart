import 'package:flutter/material.dart';
import 'package:tourist_app/screens/restaurant_detail_page.dart';
import 'package:tourist_app/screens/splash_screen.dart';
import 'screens/home_screen.dart';
import 'screens/Tourist_Place.dart';
import 'screens/detail_tourist_place.dart';
import 'package:tourist_app/screens/shopping_place.dart';
import 'package:tourist_app/screens/shopping_detail_screen.dart';
import 'package:tourist_app/screens/restaurants_screen.dart';
import 'package:tourist_app/screens/hotels_screen.dart';
import 'screens/about_screen.dart';

class AppRoutes {
  static const String SPLASH_SCREEN_ROUTE = '/';
  static const String HOME_SCREEN_ROUTE = '/home';
  static const String TOURIST_PLACE_ROUTE = '/tourist_place';
  static const String DETAIL_TOURISTPAGE_ROUTE = '/detail_tourist_page';
  static const String RESTAURANTS_SCREEN_ROUTE = '/restaurants_list';
  static const String DETAIL_RESTAURANTS_ROUTE = '/detail_restaurants_page';
  static const String HOTEL_PAGE_ROUTE = '/hotels_page';
  static const String SHOPPING_PLACE_ROUTE = '/shopping_place';
  static const String DETAIL_SHOPPINGPLACE_ROUTE = '/detail_shopping_page';
  static const String ABOUT_SCREEN_ROUTE = '/about_screen';


  static Map<String, WidgetBuilder> getRoutes() => {
    SPLASH_SCREEN_ROUTE: (context) => SplashScreen(),
    HOME_SCREEN_ROUTE: (context) => HomeScreen(),
    TOURIST_PLACE_ROUTE: (context) => TouristPlaces(),
    DETAIL_TOURISTPAGE_ROUTE: (context) => DetailTouristPage(),
    RESTAURANTS_SCREEN_ROUTE: (context) => RestaurantsPage(),
    DETAIL_RESTAURANTS_ROUTE: (context) => RestaurantDetailPage(),
    HOTEL_PAGE_ROUTE: (context) => HotelsPage(),
    SHOPPING_PLACE_ROUTE: (context) =>  ShoppingPlaces(),
    DETAIL_SHOPPINGPLACE_ROUTE: (context) => DetailShoppingPage(),
    ABOUT_SCREEN_ROUTE: (context) => AboutScreen(),
  };
}

// final Map<String, WidgetBuilder> appRoutes = {
//   '/': (context) => SplashScreen(),
//   '/home': (context) => HomeScreen(),
//   '/places': (context) => PlacesListScreen(),
//   '/placeDetail': (context) => PlaceDetailScreen(),
//   '/about': (context) => AboutScreen(),
// };
