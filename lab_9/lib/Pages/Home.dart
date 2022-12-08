import 'package:flutter/material.dart';
import 'package:lab_9/Asses/Colors.dart';
import 'package:lab_9/Comp/Custom%20TextFiled.dart';
import 'package:lab_9/Comp/Food%20Menu.dart';
import 'package:lab_9/Comp/Food%20Type.dart';
import 'package:lab_9/Comp/Near%20Me.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: [
            CustomTextFiled(
              title: "Search",
              textFiledIcon: Icon(Icons.search),
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(
                  width: 10,
                ),
                Text("9 West 46 Th Street, New York City"),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  FoodType(
                    foodImage: "images/Drink.png",
                    foodColor: GrayColor,
                    typeName: "Drink",
                  ),
                  FoodType(
                    foodImage: "images/Food.png",
                    foodColor: OrngColor,
                    typeName: "Food",
                  ),
                  FoodType(
                    foodImage: "images/Cake.png",
                    foodColor: GrayColor,
                    typeName: "Cake",
                  ),
                  FoodType(
                    foodImage: "images/Snack.png",
                    foodColor: GrayColor,
                    typeName: "Snack",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Food Menu",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  FoodMenu(
                      foodName: "Burgers",
                      foodImage: "images/Burger.png",
                      foodColor: Color(0xFF3498DB))
                  //Text("data"),
                  ,
                  FoodMenu(
                      foodName: "Pizza",
                      foodImage: "images/Pizza.png",
                      foodColor: Color(0xFF9B59B6)),
                  FoodMenu(
                      foodName: "BBQ",
                      foodImage: "images/BBQ.png",
                      foodColor: Color(0xFF3498DB))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  FoodMenu(
                      foodName: "Fruit",
                      foodImage: "images/Fruit.png",
                      foodColor: Color(0xFF9B59B6)),
                  FoodMenu(
                      foodName: "Sushi",
                      foodImage: "images/Sushi.png",
                      foodColor: Color(0xFF3498DB)),
                  FoodMenu(
                      foodName: "Noodle",
                      foodImage: "images/Noodle.png",
                      foodColor: Color(0xFF9B59B6)),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Near me",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: NearMe(),
            )
          ],
        ),
      ),
    );
  }
}
