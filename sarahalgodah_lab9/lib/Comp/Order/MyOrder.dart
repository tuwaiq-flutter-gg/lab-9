import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarahalgodah_lab9/Comp/Order/listTileReviewFood.dart';
import 'package:sarahalgodah_lab9/Custom/CustomButton.dart';
import 'package:sarahalgodah_lab9/constant.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Review Food",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(dPadding),
            child: SizedBox(
              height: Get.height * 0.68,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    ListTileFood(title: "Dogmie jagong tutung" , likeicons1: "images/ReviewFood/like.png", like: 999,unLike: 93,likeicons2: "images/ReviewFood/unLike.png", price: 99.99,likeicons3:"images/ReviewFood/WhiteunLike.png" ,likeicons4:"images/ReviewFood/likeOrange.png" ,),
                    ListTileFood(title: "Dogmie jagong tutung" , likeicons1: "images/ReviewFood/like.png", like: 999,unLike: 93,likeicons2: "images/ReviewFood/unLike.png", price: 99.99,likeicons3:"images/ReviewFood/unLikeOrange.png" ,likeicons4:"images/ReviewFood/WhiteLike.png" ,),
                    ListTileFood(title: "Dogmie jagong tutung" , likeicons1: "images/ReviewFood/like.png", like: 999,unLike: 93,likeicons2: "images/ReviewFood/unLike.png", price: 99.99,likeicons3:"images/ReviewFood/WhiteunLike.png" ,likeicons4:"images/ReviewFood/WhiteLike.png" ,),
                  ]),
                  CustomButton(
                      buttonColor: primaryColor, buttonText: "Send"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
