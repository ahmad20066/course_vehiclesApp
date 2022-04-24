import 'package:flutter/material.dart';
import 'package:vehicles_app/screens/categories_screen.dart';
import 'package:vehicles_app/screens/category_details.dart';
import 'package:vehicles_app/screens/favorites_screen.dart';
import 'package:vehicles_app/screens/splash_screen.dart';
import 'package:vehicles_app/screens/tab_screen.dart';
import 'package:vehicles_app/screens/vehicle_details_screen.dart';
import 'package:vehicles_app/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themes.lightMode,
      darkTheme: Themes.darkMode,
      themeMode: ThemeMode.system,
      home: SplashScreen2(),
      routes: {
        CategoryDetailsScreen.routeName: (context) => CategoryDetailsScreen(),
        VehicleDetailsScreen.routeName: (context) => VehicleDetailsScreen(),
        FavoritesScreen.routeName: (context) => FavoritesScreen(),
        TabScreen.routeName: (context) => TabScreen()
      },
    );
  }
}
