import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hadeel_lab9/components/PreviousOrder.dart';
import 'package:hadeel_lab9/components/customButton.dart';

class FoodReview extends StatelessWidget {
  const FoodReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Review Food",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xff000000),
          ),
        ),
      ),
      body: ListView(
        children: [
          PreviousOrder(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          PreviousOrder(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          PreviousOrder(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customButton(
                title: "Send",
                onPressed: () {},
                buttonColor: Color(0xffD35400),
                fontColor: Color(0xffffffff),
              )
            ],
          )
        ],
      ),
    );
  }
}
