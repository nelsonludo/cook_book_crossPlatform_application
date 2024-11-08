import 'package:cook_book_application/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import '../dummy-data.dart';

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

    final categoryId = routeArg["id"];
    final categoryTitle = routeArg["title"] as String;
    final categoryColor = routeArg["color"] as Color;
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
        backgroundColor: categoryColor,
        foregroundColor: Theme.of(context).canvasColor,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
              id: categoryMeals[index].id,
              title: categoryMeals[index].name,
              imageUrl: categoryMeals[index].imageUrl,
              affordability: categoryMeals[index].affordability,
              complexity: categoryMeals[index].complexity,
              duration: categoryMeals[index].duration);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
