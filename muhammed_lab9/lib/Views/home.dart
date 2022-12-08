import 'package:flutter/material.dart';

import '../component/MyTextField.dart';
import '../component/backgroundIcon.dart';
import '../component/foodMenue.dart';
import '../component/foodRev.dart';
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
  Center(
    child: Padding(
      padding: const EdgeInsets.only(top:8.0),
      child: myCustomTextField(
                    text: "Sign in",
                    search: true,
                  ),

    ),
  ),
  SizedBox(height: 12,),
  Container(
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.only(left: 38),
    child: Row(
      
                  children: [
                    Icon(Icons.location_on_outlined,color: Color(0xff34495E),),
                     Text(
                    "13 th Street, 46 W 12th St, NY",
                    style: TextStyle(fontSize: 12 ,color: Color(0xff34495E)),

                  ),
                  ],
                ),
  ),
  SizedBox(height: 15,),
  Container(width: 700,height: 100,

    child: ListView(
        scrollDirection: Axis.horizontal,
      children: [

                Container(
//
                  padding: EdgeInsets.only(left: 15,right: 15),
                  child: backgroundIcon( height: 70,
                text: Text("Drink"),
                backgroundColor: Color(0xffECF0F1),
                centeredIcon: Icon(
                  Icons.coffee,
                  size: 35,),)),
                   Container(
//
                  padding: EdgeInsets.only(left: 15,right: 15),
                  child: backgroundIcon( height: 70,
                text: Text("Drink"),
                backgroundColor: Color(0xffECF0F1),
                centeredIcon: Icon(
                  Icons.coffee,
                  size: 35,),)),

                    Container(
//
                  padding: EdgeInsets.only(left: 15,right: 15),
                  child: backgroundIcon( height: 70,
                text: Text("Burger"),
                backgroundColor: Color(0xffD35400),
                centeredIcon: Image.asset("images/burger (1) 1.png"))),


                    Container(
//
                  padding: EdgeInsets.only(left: 15,right: 15),
                  child: backgroundIcon( height: 70,
                text: Text("Cake"),
                backgroundColor: Color(0xffECF0F1),
                centeredIcon: Image.asset("images/Group.png")
                )),


                    Container(
//
                  padding: EdgeInsets.only(left: 15,right: 15),
                  child: backgroundIcon( height: 70,
                text: Text("Snacks"),
                backgroundColor: Color(0xffECF0F1),
                centeredIcon:Image.asset("images/potato-chips 1.png"),)),
                    Container(
//
                  padding: EdgeInsets.only(left: 15,right: 15),
                  child: backgroundIcon( height: 70,
                text: Text("Drink"),
                backgroundColor: Color(0xffECF0F1),
                centeredIcon: Icon(
                  Icons.coffee,
                  size: 35,),)),
      ],
    ),
  ),
  SizedBox(height: 15,),
  Container(
    width: MediaQuery.of(context).size.width*.8,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Food Menu", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                Text("view all", style: TextStyle(fontSize: 12),),

      ],
    ),
  ),
  Container(
    height: 300,
    width: 700,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
         Column(
          children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: foodMenu(
                 name: "Burger",
                 image: "images/burger.png",
               
                ),
             ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: foodMenu(  
                  name: "Fruits",
                     image: "images/fruits.png",
                   backgroundColor: Color.fromARGB(113, 52, 152, 219),),
              ),
          ],
        ),
        Column(
          
          children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: foodMenu(
                 name: "Pizza",
                 image: "images/pizza.png",
               
                ),
             ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: foodMenu(  
                  name: "Sushi",
                     image: "images/sushi.png",
                   backgroundColor: Color.fromARGB(113, 52, 152, 219),),
              ),
          ],
        ),
         Column(
          children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: foodMenu(
                 name: "BBQ",
                 image: "images/bbq.png",
               
                ),
             ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: foodMenu(  
                  name: "Noodle",
                     image: "images/noodls.png",
                   backgroundColor: Color.fromARGB(113, 52, 152, 219),),
              ),
          ],
        ),
         Column(
          children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: foodMenu(
                 image: "images/pizza.png",
               
                ),
             ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: foodMenu(  
                  
                     image: "images/sushi.png",
                   backgroundColor: Color.fromARGB(113, 52, 152, 219),),
              ),
          ],
        )
      ],
    ),
  ),


   Container(
    width: MediaQuery.of(context).size.width*.8,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Near Me", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                Text("view all", style: TextStyle(fontSize: 12),),

      ],
    ),),
SizedBox(height: 10,),

    Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: [
           foodRev(
                image: Image.asset("images/Rectangle 6.png"),
                title: Text(
                  "Dapur Ijah Restaurant",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, ),

                ),

              sub1: Row(
                children: [
                  Icon(Icons.location_on_outlined,color: Color(0xff34495E),),
                   Text(
                  "13 th Street, 46 W 12th St, NY",
                  style: TextStyle(fontSize: 12 ,color: Color(0xff34495E)),

                ),
                ],
              ),
sub2: Row(
                children: [
                  Icon(Icons.timer_sharp,color: Color(0xff34495E),),
                   Text(
                  "3 min - 1.1 km",
                  style: TextStyle(fontSize: 12 ,color: Color(0xff34495E)),

                ),
                ],
              ),
              sub3: Row(
                children: [
                  Icon(Icons.star,color: Color(0xffFFC107),),
                      Icon(Icons.star,color: Color(0xffFFC107),),
                          Icon(Icons.star,color: Color(0xffFFC107),),
                              Icon(Icons.star,color: Color(0xffFFC107),),
                                  Icon(Icons.star,color: Color(0xffFFC107),),
                  
                ],
              ),


              ),




        ],
      ),
    )
      ],
    );
  }
}