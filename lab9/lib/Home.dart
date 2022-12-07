import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/camponant/contaner_Home.dart';
import 'package:lab9/order.dart';

class Home_Page extends StatefulWidget {
  Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int selectedindex = 0;
  List pages = [
    Home(),
    Order(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color.fromARGB(255, 15, 12, 12),
          currentIndex: selectedindex,
          selectedIconTheme: IconThemeData(color: Color(0xffD35400)),
          unselectedItemColor: Color.fromARGB(255, 121, 119, 119),
          onTap: (index) {
            setState(() {
              selectedindex = index;
            });
            pages[selectedindex];
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 35),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper_outlined, size: 35),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
                size: 35,
              ),
              label: 'My List',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 35),
              label: 'Profile',
            ),
            //New
          ],
        ),
        body: pages.elementAt(selectedindex));
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
          child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffECF0F1),
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",
                  hintStyle: TextStyle(fontSize: 18),
                  contentPadding: EdgeInsets.fromLTRB(20, 8, 0, 0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)))),
        ),
        Row(
          children: [
            IconButton(
                onPressed: (() {}), icon: Icon(Icons.location_on_outlined)),
            Text("9 West 46 Th Street, New York City")
          ],
        ),
        Container(
          height: 190,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            Row(
              children: [
                Contaner_Home(
                  Img: "imag/coffee-cup 1Coffe.png",
                  name_contaner: "Coffee",
                ),
                Contaner_Home(
                  Img: "imag/burger (1) 1Food.png",
                  name_contaner: "Food",
                ),
                Contaner_Home(
                  Img: "imag/piece-of-cake 1.png",
                  name_contaner: "Cake",
                ),
                Contaner_Home(
                  Img: "imag/potato-chips 1.png",
                  name_contaner: "Snack",
                ),
              ],
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Food Menu",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
              Text("View all",style: TextStyle(fontSize: 16,color: Colors.black),),

            ],
          ),
        ),
         Container(
          height:140,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            Row(
              children: [
                    InkWell(child: Contener2(Img: "imag/Group 2burger.png",)),
                    InkWell(child: Contener2(Img: "imag/Group 3.png",)),
                   InkWell(child:Contener2(Img: "imag/b.jpeg",),),
                    
              ],
            ),
          ]),
        ),
        Container(
          height:140,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            Row(
              children: [
                    InkWell(child: Contener2(Img: "imag/Group 5.png",)),
                    InkWell(child: Contener2(Img: "imag/Group 6.png",)),
                    InkWell(child: Contener2(Img: "imag/no.jpeg",)),
                    
              ],
            ),
          ]),
        ),
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Near Me",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
              Text("View all",style: TextStyle(fontSize: 16,color: Colors.black),),

            ],
          ),
        ),
        Container(
          height: 130,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Image.asset("imag/Rectangle 6.png",height: 130,width: 130,),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Dapur Ijah Restaurant",style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 39,top: 10),
                    child: Row(children: [
                      Icon(Icons.location_on_outlined),
                      Text("13 th Street, 46 W 12th St, NY")
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,right: 53),
                    child: Row(children: [
                      Icon(Icons.av_timer),
                      Text("3 min - 1.1 km")
                    ],),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
