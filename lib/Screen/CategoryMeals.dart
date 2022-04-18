import 'package:flutter/material.dart';
import 'package:mealapp/widget/meal_iteam.dart';
import '../Dummy_category.dart';

class categoryMeals extends StatelessWidget {
  /* final String id;
  final String title;
  const categoryMeals({
    required this.id,
    required this.title,
  });*/

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final fiterCategory = DUMMY_MEALS.where((Meal) {
      return Meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
          title: Text('Tejveer meals app')
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealIteam(
              title: fiterCategory[index].title,
              imageUrl: fiterCategory[index].imageUrl,
              duration: fiterCategory[index].duration,
              Complexity: fiterCategory[index].Complexity,
              Affordability: fiterCategory[index].Affordability);
        },
        itemCount: fiterCategory.length,
      ),
    );
  }
}
