import 'package:flutter/material.dart';
import 'package:mealapp/Screen/Categories_Screen.dart';
import 'package:mealapp/models/Category.dart';
import 'package:mealapp/Screen/CategoryMeals.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DailyMeals',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Georgia',
          fontSizeDelta: 8,
         // fontSizeFactor: 1,

        ),
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
      ),
     // home: categoryScreen(),
      routes: {
        '/': (ctx) => categoryScreen(),
        '/categoryMeals': (ctx) => categoryMeals()
      },
    );
  }
}

