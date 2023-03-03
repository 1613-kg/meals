import 'package:flutter/material.dart';
import 'package:meals/models/meals.dart';
import 'package:meals/widgets/main_drawer.dart';

import 'fav.dart';
import 'package:meals/screens/categories_screen.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> _favMeals;

  TabsScreen(this._favMeals);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
   late List<Map<String, Object>> _pages;
  int _selectPageIndex = 0;
  void _selectPage(int index) {
    setState(
      () {
        _selectPageIndex = index;
      },
    );
  }
  @override
  void initState() {
   _pages =  [
   {
      'page': CategoriesMeals(),
      'title': "Categories",
   },
   {
        'page': Fav(widget.favMeals),
      'title': "Your Favourite",
   }
  ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals'),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Favourites",
          ),
        ],
      ),
    );
  }
}
