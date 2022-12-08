
import 'package:flutter/material.dart';
import 'package:sarahalgodah_lab9/Comp/Page3_HomePage/FoodItems.dart';
import 'package:sarahalgodah_lab9/constant.dart';

class FirstScrollItemsFood extends StatelessWidget {
  const FirstScrollItemsFood({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FoodItems(
            iteemsColor: lightFaildColor,
            itemsTitle: "Drink",
            itemsImage: "images/fooditems/coffee-cup 1.png",
          ),
          FoodItems(
            iteemsColor: primaryColor,
            itemsTitle: "Food",
            itemsImage: "images/fooditems/burger.png",
          ),
          FoodItems(
            iteemsColor: lightFaildColor,
            itemsTitle: "Cake",
            itemsImage: "images/fooditems/Cake.png",
          ),
          FoodItems(
            iteemsColor: lightFaildColor,
            itemsTitle: "Snak",
            itemsImage: "images/fooditems/Snak.png",
          ),
        ],
      ),
    );
  }
}
