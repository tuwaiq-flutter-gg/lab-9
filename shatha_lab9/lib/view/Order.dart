
import 'package:flutter/material.dart';
import 'package:shatha_lab9/Style/StylesFunctions.dart';
import 'package:shatha_lab9/components/ReviewFood.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
         children: [
         
         customAppBar(title: 'Review Food'),

          const ReviewFood(like: true, dislike: false),
          const ReviewFood(like: false, dislike: true),
          const ReviewFood(like: false, dislike: false),

         ],
      ),
    );
  }
}