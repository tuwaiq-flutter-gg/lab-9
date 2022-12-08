import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/Components/AppBarCom.dart';
import 'package:lab9/Components/MyListCom.dart';
import 'package:lab9/Styles/Colors.dart';

import '../Components/ButtonCom.dart';
import '../Components/ReviewFoodCom.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarCom(Title: "My List",OnPr: () {
            Navigator.pop(context);
          }),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          ///////////

          MyListCom(
              ContainerColor: orange,
              isCheck: Image.asset("images/tick 1.png")),

          SizedBox(
            height: 10,
          ),
          MyListCom(ContainerColor: lightGray),

          SizedBox(
            height: 10,
          ),
          MyListCom(ContainerColor: lightGray),

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
