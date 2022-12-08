import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/Components/AppBarCom.dart';
import 'package:lab9/Components/ButtonCom.dart';
import 'package:lab9/Styles/Colors.dart';

import '../Components/ReviewFoodCom.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarCom(
        Title: "Review Food",
        OnPr: () {
          Navigator.pop(context);
        },
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),

          //////////
          ReviewFoodCom(
            DislikeColor: lightGray,
            likeColor: orange,
          ),
          SizedBox(
            height: 10,
          ),
          ReviewFoodCom(
            DislikeColor: orange,
            likeColor: lightGray,
          ),
          SizedBox(
            height: 10,
          ),
          ReviewFoodCom(
            DislikeColor: lightGray,
            likeColor: lightGray,
          ),
          SizedBox(
            height: 270,
          ),

          Center(
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 45,
                child: ButtonCom(
                  ButtonName: "Send",
                  Color: orange,
                  NameColor: Colors.white,
                  OnPressed: () {},
                )),
          )
        ],
      ),
    );
  }
}
