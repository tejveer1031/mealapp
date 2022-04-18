import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';

import '../models/meal.dart';

class MealIteam extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final complexity Complexity;
  final affordability Affordability;

  String get ComplexityText {
    switch (Complexity) {
      case complexity.simple:
        return 'Simple';
        break;
      case complexity.Hard:
        return 'Hard';
        break;
      case complexity.Challenging:
        return 'challenging';
        break;
      default:
        return 'Unkown';
    }
  }
  String get AffordabilityText {
    switch (Affordability) {
      case affordability.Pricey:
        return 'Luxurious';
        break;
      case affordability.affordable:
        return 'affordable';
        break;
      case affordability.Pricey:
        return 'Pricey';
        break;
      default:
        return 'Unkown';
    }
  }


  void selectMeal() {}

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: InkWell(
          onTap: selectMeal,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 4,
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      child: Image.network(
                        imageUrl,
                        height: 250,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      right: 15,
                      bottom: 10,
                      child: Container(
                        width: 250,
                        color: Colors.black26,
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        child: Text(
                          title,
                          style: TextStyle(fontSize: 26, color: Colors.white),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.schedule),
                          SizedBox(
                            width: 6,
                          ),
                          Text('$duration min',style: TextStyle(fontSize: 17),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.work),
                          SizedBox(
                            width: 6,
                          ),
                          Text(ComplexityText,style: TextStyle(fontSize: 17),)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.attach_money),
                          SizedBox(
                            width: 6,
                          ),
                          Text(AffordabilityText,style: TextStyle(fontSize: 17),)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  const MealIteam({
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.Complexity,
    required this.Affordability,
  });
}
