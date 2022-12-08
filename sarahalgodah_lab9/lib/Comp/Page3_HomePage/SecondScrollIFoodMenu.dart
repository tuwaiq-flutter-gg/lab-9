
import 'package:flutter/material.dart';
import 'package:sarahalgodah_lab9/Comp/Page3_HomePage/FoodMenu.dart';

class SecondScrollIFoodMenu extends StatelessWidget {
  const SecondScrollIFoodMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
         scrollDirection: Axis.horizontal,
         child: Row(
           children: [
             FoodMenu(
               title: "Burgers",
               backGroundColor: Color(0xFF3498DB).withOpacity(0.5),
               img: "images/image.png",
             ),
             FoodMenu(
               title: "Pizza",
               backGroundColor: Color(0xFF9B59B6).withOpacity(0.5),
               img: "images/foodmenu/Pizza.png",
             ),
             FoodMenu(
               title: "BBQ",
               backGroundColor: Color(0xFF3498DB).withOpacity(0.5),
               img: "images/foodmenu/BBQ.png",
             ),
           ],
         ),
         
              ),
    SingleChildScrollView(
     scrollDirection: Axis.horizontal,
     child: Row(
       children: [
         FoodMenu(
           title: "Fruit",
           backGroundColor: Color(0xFF9B59B6).withOpacity(0.5),
           img: "images/foodmenu/Fruit.png",
         ),
         FoodMenu(
           title: "Sushi",
           backGroundColor: Color(0xFF3498DB).withOpacity(0.5),
           img: "images/foodmenu/Sushi.png",
         ),
         FoodMenu(
           title: "Noodels",
           backGroundColor: Color(0xFF9B59B6).withOpacity(0.5),
           img: "images/foodmenu/Noodle.png",
         ),
       ],
     ),
              ),
      ],
    );
  }
}