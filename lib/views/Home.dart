import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hadeel_lab9/components/CustomTextField.dart';
import 'package:hadeel_lab9/components/FoodMenu.dart';
import 'package:hadeel_lab9/components/FoodMenuCategory.dart';
import 'package:hadeel_lab9/components/RestaurantCard.dart';

import 'package:hadeel_lab9/components/categoryCard.dart';
import 'package:hadeel_lab9/components/customButton.dart';
import 'package:hadeel_lab9/components/customTextButton.dart';
import 'package:hadeel_lab9/components/sectionHeadline.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          CustomTextField(
            hint: "Search",
            icon: Icon(Icons.search),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Text(
                  "9 West 46 Th Street, New York City",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff000000),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.3,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    imageURL: "images/coffee-cup 1.jpg",
                    title: "Drink",
                    color: Color(0xffECF0F1),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  CategoryCard(
                    imageURL: "images/burger (1) 1.jpg",
                    title: "Food",
                    color: Color(0xffD35400),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  CategoryCard(
                    imageURL: "images/Group.jpg",
                    title: "Cake",
                    color: Color(0xffECF0F1),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  CategoryCard(
                    imageURL: "images/potato-chips 1.jpg",
                    title: "Snack",
                    color: Color(0xffECF0F1),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          sectionHeadline(
            title: "Food Menu",
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          FoodMenu(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          sectionHeadline(
            title: "Near Me",
          ),
          RestaurantCard(),
        ],
      ),
    );
  }
}
