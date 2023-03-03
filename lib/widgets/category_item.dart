import 'package:flutter/material.dart';

import 'package:meals/screens/reciepes.dart';

class CategoryItem extends StatelessWidget {
  //const CategoryItem({super.key});
  final String title;
  final Color color;
  final String id;

  const CategoryItem(this.id, this.title, this.color, {super.key});
  void select(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      '/categories-meals',
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => select(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
