
import 'package:flutter/material.dart';
import 'package:shatha_lab9/Style/StylesFunctions.dart';
import 'package:shatha_lab9/Style/StylesList.dart';

class Category extends StatelessWidget {
  Category({ super.key ,required this.type, required this.text }) {

    switch (text) {
      case "Drink":
        image = Image.asset("images/coffee-cup 1.png");
        break;

      case "Food":
        image = Image.asset("images/burger (1) 1.png");
        break;
      
      case "Cake":
        image = Image.asset("images/piece-of-cake 1.png");
        break;
      
      case "Snack":
        image = Image.asset("images/potato-chips 1.png");
        break;

      default:
        image = Image.asset("");

    }
  }
  final Buttons type ;
  final String text ;
  late Image image ;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0 , left: 15.0),
      child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: type.buttonColor,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: image,
                ),
                customRegularText(text: text, verySmall: false),
              ],
            ),
    );
  }
}