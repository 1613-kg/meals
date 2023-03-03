import 'package:flutter/material.dart';
import 'package:meals/screens/filters.dart';

import 'package:meals/screens/tabs_screen.dart';
import 'models/meals.dart';
import 'screens/categories_screen.dart';
import 'package:meals/screens/reciepes.dart';
import 'package:meals/screens/reciepes_meal_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> _favMeals = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      theme: ThemeData(
        canvasColor: const Color.fromRGBO(255, 254, 239, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyLarge: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyMedium: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              titleLarge: const TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
            .copyWith(secondary: Colors.amber),
      ),
     // home: TabsScreen(),
     initialRoute: '/',
      routes: {
        '/' : (ctx) => TabsScreen(_favMeals),
        '/categories-meals': (ctx) => Receipes(),
        '/meals-reciepes': (ctx) => MealsScreen(),
        Filters.routeName: (ctx) => Filters(),
      },
    );
  }
}
