import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarahalgodah_lab9/constant.dart';

class ListTileFood extends StatelessWidget {
  ListTileFood(
      {super.key,
      this.like,
      this.price,
      this.title,
      this.unLike,
      this.likeicons1,
      this.likeicons2,
      this.likeicons3,
      this.likeicons4});
  String? title;
  double? price;
  int? like;
  int? unLike;
  String? likeicons1;
  String? likeicons2;
  String? likeicons3;
  String? likeicons4;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 100,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset("images/Rectangle 6.png"),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "   ${title.toString()}",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(likeicons1.toString())),
                  Text("${like!.toInt()}+"),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(likeicons2.toString())),
                  Text("${unLike!.toInt()}+"),
                ],
              ),
            ),
            Text(
              "   \$${price!.toDouble()}",
              style: TextStyle(color: Colors.green),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {}, icon: Image.asset(likeicons3.toString(),) ),
            IconButton(
                onPressed: () {}, icon: Image.asset(likeicons4.toString())),
          ],
        )
      ]),
    );
  }
}
