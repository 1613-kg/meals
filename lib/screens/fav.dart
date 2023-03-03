import 'package:flutter/material.dart';

import '../models/meals.dart';

class Fav extends StatelessWidget {
  final List<Meal> _favMeals;

  Fav(this._favMeals);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Favourite Meals!!"),
    );
  }
}
