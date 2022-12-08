import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/pages/BNBar.dart';
import 'package:lab9/Components/TextField.dart';
import 'package:lab9/Styles/Colors.dart';
import 'package:rate/rate.dart';

import '../Components/Categories.dart';
import '../Components/FoodMenuCon.dart';
import '../Components/SectionTitle.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      //////////////////////////////////////////////////////////////
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              height: 50,
              child: TextFieldCom(
                Icon: Icon(Icons.search),
                HintText: "Search",
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 30,
              width: MediaQuery.of(context).size.width - 50,
              child: Row(
                children: [
                  Icon(Icons.location_on),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "9 West 46 Th Street, New York City",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          //Categories

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                //
                Categories(
                  ContainerColor: lightGray,
                  name: "Drink",
                  pic: "images/coffee-cup 1.png",
                ),
                //
                Categories(
                  ContainerColor: orange,
                  name: "Food",
                  pic: "images/burger (1) 1.png",
                ),
                Categories(
                  ContainerColor: lightGray,
                  name: "Cake",
                  pic: "images/piece-of-cake 1.png",
                ),
                Categories(
                  ContainerColor: lightGray,
                  name: "Snack",
                  pic: "images/potato-chips 1.png",
                ),
              ],
            ),
          ),
          //-----------------------------------------------------
          //
          SizedBox(
            height: 30,
          ),
          SectionTitle(Name: "Food Menu"),
          //
          SizedBox(
            height: 10,
          ),
          //
          //Food Menu row 1
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  //
                  FoodMenuCon(
                      ContainerColor: ligtBlue,
                      Name: "Burgers",
                      pic: "images/Burger.png"),
                  FoodMenuCon(
                      ContainerColor: ligtPurple,
                      Name: "Pizza",
                      pic: "images/pizza.png"),
                  FoodMenuCon(
                      ContainerColor: ligtBlue,
                      Name: "BBQ",
                      pic: "images/BBQ.png"),
                  //---------------------------------------------------------
                ],
              )),
          //Food Menu row 2
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  //
                  FoodMenuCon(
                      ContainerColor: ligtPurple,
                      Name: "Fruit",
                      pic: "images/Fruit.png"),
                  FoodMenuCon(
                      ContainerColor: ligtBlue,
                      Name: "Sushi",
                      pic: "images/Sushi.png"),
                  FoodMenuCon(
                      ContainerColor: ligtPurple,
                      Name: "Noodle",
                      pic: "images/Noodle.png"),
                  //---------------------------------------------------------
                ],
              )),
          SizedBox(
            height: 10,
          ),
          SectionTitle(Name: "Near Me"),
          SizedBox(
            height: 10,
          ),
          //------------------------------------------------------------
          //near me
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              SizedBox(
                height: 130,
                width: 130,
                child: FittedBox(
                  child: Image.asset("images/Dapur.png"),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              //Texts:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //text1
                  Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Dapur Ijah Restaurant",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //text2:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.location_on),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "13 th Street, 46 W 12th St, NY",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  //text3
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "3 min - 1.1 km",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  //rate4
                  Rate(
                    iconSize: 20,
                    color: Color(0xFFFFC107),
                    allowHalf: true,
                    allowClear: true,
                    initialValue: 5,
                    readOnly: false,
                    onChange: (value) => print(value),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              )
            ],
          ),
          //////////////////////////////////////////////////////////////////////
        ],
      )),
    );
  }
}
