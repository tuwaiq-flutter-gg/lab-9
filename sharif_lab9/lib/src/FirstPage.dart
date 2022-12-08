// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sharif_lab9/components/FoodCategory.dart';
import 'package:sharif_lab9/components/MenuItem.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 30),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 30, right: 30),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide.none),
                  filled: true,
                  labelText: "Search",
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(Icons.location_on),
                const Text('   9 West 46 Th Street, New York City'),
              ],
            ),
          ),
          SizedBox(
            height: 150,
            child: Padding(
              padding: const EdgeInsets.only(left: 1),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  FoodCategory(
                    icon: Icons.wine_bar,
                    title: "Drink",
                    bkgcolor: Color(0xffECF0F1),
                    fgcolor: Colors.black,
                  ),
                  FoodCategory(
                    icon: Icons.food_bank,
                    title: "Food",
                    bkgcolor: Color(0xffD35400),
                    fgcolor: Colors.white,
                  ),
                  FoodCategory(
                    icon: Icons.cake,
                    title: "Cake",
                    bkgcolor: Color(0xffECF0F1),
                    fgcolor: Colors.black,
                  ),
                  FoodCategory(
                    icon: Icons.fastfood,
                    title: "Snacks",
                    bkgcolor: Color(0xffECF0F1),
                    fgcolor: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Food Menu",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "View All",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CustomMenuItem(
                    image: "images/image1-1.png",
                    title: "Burger",
                    color: Color(0xff3498DB),
                  ),
                  CustomMenuItem(
                    image: "images/image1-2.png",
                    title: "Pizza",
                    color: Color(0xff9B59B6),
                  ),
                  CustomMenuItem(
                    image: "images/image1-3.png",
                    title: "Fruits",
                    color: Color(0xff3498DB),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CustomMenuItem(
                    image: "images/image2-1.png",
                    title: "Fruits",
                    color: Color(0xff9B59B6),
                  ),
                  CustomMenuItem(
                    image: "images/image2-2.png",
                    title: "Fruits",
                    color: Color(0xff3498DB),
                  ),
                  CustomMenuItem(
                    image: "images/image2-3.png",
                    title: "Fruits",
                    color: Color(0xff9B59B6),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Near Me",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "View All",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
