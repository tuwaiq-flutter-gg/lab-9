import 'package:flutter/material.dart';

class CustomeImages extends StatelessWidget {
  const CustomeImages({super.key,required this.backGroundImage, required this.textFoodName, required this.imageFood});
  final Color backGroundImage;
  final String textFoodName ,imageFood;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: backGroundImage,
      child: Column(
        children: [
        Text(textFoodName),
        Image.asset(imageFood)


      ],),

    );
  }
}