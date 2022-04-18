import 'package:flutter/material.dart';
import 'package:mealapp/widget/CategoryIteam.dart';
import 'package:mealapp/Dummy_category.dart';
import '../Dummy_category.dart';

class categoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tejveer Meals app'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(10),
        children: Dummy_Categories.map((catlog) =>
            categoryIteam(id: catlog.id,title: catlog.title, color: catlog.color)).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
