import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import 'package:meals/dummy.dart';

class CategoriesMeals extends StatelessWidget {
  const CategoriesMeals({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(15),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 3 / 2,
        mainAxisSpacing: 30,
        crossAxisSpacing: 30,
      ),
      children: DUMMY_CATEGORIES
          .map(
            (catData) => CategoryItem(catData.id, catData.title, catData.color),
          )
          .toList(),
    );
  }
}
