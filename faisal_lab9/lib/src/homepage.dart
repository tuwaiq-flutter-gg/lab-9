import 'package:faisal_lab9/comp/Search.dart';
import 'package:faisal_lab9/comp/foodCate.dart';
import 'package:faisal_lab9/comp/foodmenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                search(title: "Search"),
                SizedBox(
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 1),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        foodcate(
                          img: "images/coffee.png",
                          name: "Drink",
                        ),
                        foodcate(
                          img: "images/burger.png",
                          name: "Food",
                        ),
                        foodcate(
                          img: "images/cake.png",
                          name: "Cake",
                        ),
                        foodcate(
                          img: "images/snaks.png",
                          name: "Snacks",
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
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
                        foodmenu(
                          img: "images/bu.png",
                          name: "Burger",
                          color: bl,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        foodmenu(
                          img: "images/pizza.png",
                          name: "Pizza",
                          color: pr,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        foodmenu(
                          img: "images/1.png",
                          name: "Fruits",
                          color: bl,
                        ),
                        SizedBox(
                          width: 15,
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
                        foodmenu(
                          img: "images/bu.png",
                          name: "Burger",
                          color: pr,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        foodmenu(
                          img: "images/pizza.png",
                          name: "Pizza",
                          color: bl,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        foodmenu(
                          img: "images/1.png",
                          name: "Fruits",
                          color: pr,
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}