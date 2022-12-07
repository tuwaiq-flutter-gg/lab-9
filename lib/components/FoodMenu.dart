import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hadeel_lab9/components/FoodMenuCategory.dart';

class FoodMenu extends StatelessWidget {
  const FoodMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FoodMenuCategoray(imageURL: "images/Group 2.jpg"),
              FoodMenuCategoray(imageURL: "images/Group 3.jpg"),
              FoodMenuCategoray(imageURL: "images/Group 4.jpg"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FoodMenuCategoray(imageURL: "images/Group 5.jpg"),
              FoodMenuCategoray(imageURL: "images/Group 6.jpg"),
              FoodMenuCategoray(imageURL: "images/Group 7.jpg"),
            ],
          ),
        )
      ],
    );
  }
}
