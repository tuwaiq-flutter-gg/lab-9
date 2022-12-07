import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 50,
                  width: 355,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        filled: true,
                        prefixIcon: Icon(Icons.search),
                        labelText: "Search",
                        fillColor: Color(0xffECF0F1)),
                  ),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on),
                    Text("9 West 46 TH Street,New York City")
                  ],
                ),
              ),
              Container(
                height: 100,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(
                        width: 40,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 70,
                                width: 91,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffECF0F1)),
                                child: Image.network("images/coffee-cup 1.png"),
                              ),
                              Text("Drink"),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 70,
                                width: 91,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffD35400)),
                                child: Image.network("images/Vector (2).png"),
                              ),
                              Text("Food"),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 70,
                                width: 91,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffECF0F1)),
                                child:
                                    Image.network("images/piece-of-cake 1.png"),
                              ),
                              Text("Cake"),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 70,
                                width: 91,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffECF0F1)),
                                child:
                                    Image.network("images/potato-chips 1.png"),
                              ),
                              Text("Snack"),
                            ],
                          ),
                        ],
                      )
                    ]),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Food menu",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 300,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 171, 217, 248)),
                              child: Column(children: [
                                Text(
                                  "burger",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 54),
                                    child: Image.asset(
                                      "images/image (1).png",
                                      height: 70,
                                      width: 100,
                                    ))
                              ]),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              width: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 194, 150, 211)),
                              child: Column(children: [
                                Text(
                                  "Pizza",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 54),
                                    child: Image.asset(
                                      "images/image (6).png",
                                      height: 70,
                                      width: 100,
                                    ))
                              ]),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              width: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 171, 217, 248)),
                              child: Column(children: [
                                Text(
                                  "BBQ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 80),
                                    child: Image.asset(
                                      "images/image (3).png",
                                      height: 70,
                                      width: 100,
                                    ))
                              ]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 194, 150, 211)),
                              child: Column(children: [
                                Text(
                                  "Fruit",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 54),
                                    child: Image.asset(
                                      "images/image (2).png",
                                      height: 70,
                                      width: 100,
                                    ))
                              ]),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              width: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 171, 217, 248)),
                              child: Column(children: [
                                Text(
                                  "Sushi",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 54),
                                    child: Image.asset(
                                      "images/image.png",
                                      height: 70,
                                      width: 100,
                                    ))
                              ]),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              width: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 194, 150, 211)),
                              child: Column(children: [
                                Text(
                                  "Noodie",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 80),
                                    child: Image.asset(
                                      "images/image (4).png",
                                      height: 70,
                                      width: 100,
                                    ))
                              ]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Near me",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 300,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
              Container(
                child: Row(children: [
                  Container(
                    height: 130,
                    width: 130,
                    child: Image.asset("images/Rectangle 6.png"),
                  ),
                  Column(
                    children: [
                      Text("Dapur Ijah Restaurant"),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.black,
                          ),
                          Text("13 th Street, 46 W 12th St, NY")
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Colors.black,
                          ),
                          Text("3 min - 1.1 km")
                        ],
                      ),
                      Image.asset("images/star.png")
                    ],
                  )
                ]),
              )
            ],
          ),
        ],
      ),
    );
  }
}
