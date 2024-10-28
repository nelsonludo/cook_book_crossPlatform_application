import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final Color categoryColor;
  // final String categoryId;
  // final String categoryTitle;

  // const CategoryMealsScreen(
  //     {required this.categoryId,
  //     required this.categoryTitle,
  //     this.categoryColor = Colors.pink,
  //     super.key});
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;

    final categoryTitle = routeArg["title"] as String;
    final categoryColor = routeArg["color"] as Color;
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
        backgroundColor: categoryColor,
        foregroundColor: Theme.of(context).canvasColor,
      ),
      body: Center(
        child: Text('The Recipies for the category'),
      ),
    );
  }
}
