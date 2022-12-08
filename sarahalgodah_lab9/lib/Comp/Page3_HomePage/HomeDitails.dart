import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarahalgodah_lab9/Comp/Page3_HomePage/FirstScrollItemsFood.dart';
import 'package:sarahalgodah_lab9/Comp/Page3_HomePage/FoodItems.dart';
import 'package:sarahalgodah_lab9/Comp/Page3_HomePage/FoodMenu.dart';
import 'package:sarahalgodah_lab9/Comp/Page3_HomePage/NearMeList.dart';
import 'package:sarahalgodah_lab9/Comp/Page3_HomePage/SecondScrollIFoodMenu.dart';
import 'package:sarahalgodah_lab9/Comp/Page3_HomePage/TitleSide.dart';
import 'package:sarahalgodah_lab9/Custom/CustmTextField.dart';
import 'package:sarahalgodah_lab9/constant.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(dPadding),
          child: Column(
            children: [
              CustmTextField(hintText: "Search", iconsP: Icon(Icons.search)),
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.location_on)),
                  Text("9 West 46 Th Street, New York City"),
                ],
              ),
              FirstScrollItemsFood(),
              TitleSide(
                title: "Food Menu",
                textButtonTitle: "See All",
              ),
               SecondScrollIFoodMenu(),
              TitleSide(
                title: "Near Me",
                textButtonTitle: "See All",
              ),
              Container(
                width: Get.width,
                height: 100,
                child: Row(children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        width: 100,
                        height: 100,
                        child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image.asset("images/Rectangle 6.png"))),
                  ),
                  NearMe(
                    restaurantName: "Dapur Ijah Restaurant",
                    restaurantLocation: "13 th Street, 46 W 12th St, NY",
                    restaurantTime: "3 min - 1.1 km",
                  )
                ]),
              )
            ],
          ),
        )
      ]),
    );
  }
}

