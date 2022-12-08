import 'package:flutter_svg/svg.dart';

import 'package:flutter/material.dart';
import 'package:lab9/components/foodImage.dart';
import 'package:lab9/components/myIcon.dart';
import 'package:lab9/components/myTextField.dart';
import 'package:lab9/components/rowTitle.dart';
import 'package:lab9/style.dart';

import '../components/nearRes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 30,
        ),
        const MyTextField(
          hintText: "serach",
          icon: Icon(
            Icons.search,
            size: 30,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 30),
          padding: const EdgeInsets.only(left: 30, top: 10),
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/pin 1.svg"),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "9 West 46 Th Street, New York City",
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyIcon.label(
                label: "Drink",
                svgPicturePath: "assets/icons/coffee-cup 1.svg",
              ),
              const SizedBox(
                width: 40,
              ),
              MyIcon.label(
                label: "Food",
                svgPicturePath: "assets/icons/burger (1) 1.svg",
                backGroundColor: orange,
              ),
              const SizedBox(
                width: 40,
              ),
              MyIcon.label(
                label: "Cake",
                svgPicturePath: "assets/icons/piece-of-cake 1.svg",
              ),
              const SizedBox(
                width: 40,
              ),
              MyIcon.label(
                label: "Snack",
                svgPicturePath: "assets/icons/potato-chips 1.svg",
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const RowTitle(
          title: "Food Menu",
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  FoodImage(
                    ImagePath: "assets/images/Burger.jpg",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FoodImage(
                    ImagePath: "assets/images/Fruit.jpg",
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  FoodImage(
                    ImagePath: "assets/images/Pizza.jpg",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FoodImage(
                    ImagePath: "assets/images/Sushi.jpg",
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  FoodImage(
                    ImagePath: "assets/images/BBQ.jpg",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FoodImage(
                    ImagePath: "assets/images/Noodle.jpg",
                  ),
                ],
              ),
            ],
          ),
        ),
        const RowTitle(
          title: "Near me",
        ),
        const NearRest(),
      ],
    );
  }
}
