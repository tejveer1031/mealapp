import 'package:flutter/material.dart';


class categoryIteam extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const categoryIteam({
    required this.id,
    required this.title,
    required this.color,
  });

void  SelectedRoute(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      '/categoryMeals',
      arguments: {'id': id, 'title': title},
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => SelectedRoute(context),
      splashColor: Colors.purple,
      borderRadius: BorderRadius.circular(15),
      hoverColor: Colors.yellow,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(title),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }


}
