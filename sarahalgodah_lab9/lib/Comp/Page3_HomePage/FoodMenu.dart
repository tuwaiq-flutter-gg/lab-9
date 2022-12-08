
import 'package:flutter/material.dart';

class FoodMenu extends StatelessWidget {
   FoodMenu({super.key, this.backGroundColor,
    this.img,
    this.title});


Color? backGroundColor;
  String? img;
  String? title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.all(8),
        alignment: Alignment.topCenter,
        height: 120,
        width: 120,
        decoration: BoxDecoration(
              color: backGroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:7.0 , top: 2.0),
              child: Text(title.toString(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold
              ),),
            ),
            Image.asset(img.toString()),
          ],
        ),
      ),
    );
  }
}
