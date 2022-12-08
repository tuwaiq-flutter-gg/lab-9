import 'package:flutter/material.dart';

class FoodType extends StatelessWidget {
  const FoodType(
      {super.key,
      required this.foodImage,
      required this.foodColor,
      required this.typeName});
  final String foodImage;
  final Color foodColor;
  final String typeName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: InkWell(
        onTap: () {},
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Container(
            width: 70,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  color: foodColor,
                  alignment: Alignment.center,
                  child: Image.asset(foodImage),
                ),
                Text(typeName)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
