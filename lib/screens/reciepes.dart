import 'package:flutter/material.dart';
import 'package:meals/widgets/reciepes_meals.dart';

import '../dummy.dart';

class Receipes extends StatelessWidget {
  //const Receipes({super.key});
  // final String id;
  // final String title;
  // Receipes(this.id, this.title);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final id = routeArgs['id'];
    final title = routeArgs['title'];
    final categoryMeals = DUMMY_MEALS.where(
      (meals) {
        return meals.categories.contains(id);
      },
    ).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(title!, style: Theme.of(context).textTheme.titleLarge),
      ),
      body: ListView.builder(
          itemBuilder: (ctx, index) {
            return RecMaeals(
                id: categoryMeals[index].id,
                title: categoryMeals[index].title,
                imageUrl: categoryMeals[index].imageUrl,
                afford: categoryMeals[index].affordability,
                complex: categoryMeals[index].complexity,
                duration: categoryMeals[index].duration);
          },
          itemCount: categoryMeals.length),
    );
  }
}
