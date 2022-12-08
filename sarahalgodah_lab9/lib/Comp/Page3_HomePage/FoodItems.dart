
import 'package:flutter/material.dart';

class FoodItems extends StatelessWidget {
   FoodItems({
    super.key,
   this.iteemsColor,
   this.itemsImage,
   this.itemsTitle
  });

  String? itemsTitle;
  String? itemsImage;
  Color? iteemsColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(8),
        alignment: Alignment.center,
        height: 70,
        width: 70,
        decoration: BoxDecoration(
              color: iteemsColor,
              borderRadius: BorderRadius.circular(20),
            ),

          child: Image.asset(itemsImage.toString()),
        ),
        Text(itemsTitle.toString()),
      ],
    );
  }
}

