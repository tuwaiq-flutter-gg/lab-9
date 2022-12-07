import 'package:flutter/material.dart';
import 'package:lab9/component/food.dart';
import 'package:lab9/component/top.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        SizedBox(
          height: 30,
        ),
        TopApp(
          label: "Review Food",
        ),
        SizedBox(
          height: 30,
        ),
        Food(
          nameImage: "images/like.png",
          nameImage2: "images/like (1).png",
        ),
        Food(
          nameImage: "images/like (2).png",
          nameImage2: "images/like (3).png",
        ),
        Food(
          nameImage: "images/like.png",
          nameImage2: "images/like (3).png",
        ),
      ],
    ));
  }
}
