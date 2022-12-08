import 'package:flutter/material.dart';
 import 'package:flutter/src/widgets/container.dart';
 import 'package:flutter/src/widgets/framework.dart';
import 'package:geolocator/geolocator.dart';
 import 'package:get/get.dart';
import 'package:khuloudlab9/Service/geopermission.dart';
import 'package:khuloudlab9/componet/contenr.dart';
import 'package:khuloudlab9/componet/data.dart';
import 'package:khuloudlab9/componet/foodimage.dart';
import 'package:khuloudlab9/componet/restauant.dart';
import 'package:khuloudlab9/componet/spacing.dart';
import 'package:khuloudlab9/main.dart';


 class Home extends StatefulWidget {
   const Home({super.key});

   @override
   State<Home> createState() => _HomeState();
 }

 MyData data = Get.find();
 Position? position;
 final searchCtrl = TextEditingController();

 class _HomeState extends State<Home> {
   @override
   Widget build(BuildContext context) {
     return ListView(
       children: [
         Padding(
           padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
           child: TextField(
             textAlign: TextAlign.left,
             controller: searchCtrl,
             keyboardType: TextInputType.text,
             decoration: InputDecoration(
                 prefixIcon: Icon(Icons.search),
                 hintText: 'Search',
                 hintStyle: TextStyle(fontSize: 16),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(30),
                   borderSide: BorderSide(
                     width: 0,
                     style: BorderStyle.none,
                   ),
                 ),
                 filled: true,
                 contentPadding: EdgeInsets.all(16),
                 fillColor: lightgrey),
           ),
         ),
         Padding(
           padding: const EdgeInsets.symmetric(
             horizontal: 20,
           ),
           child: Row(
             children: [
               IconButton(
                   onPressed: () async {
                     try {
                       await determinePosition();
                       position = await Geolocator.getCurrentPosition(
                           desiredAccuracy: LocationAccuracy.high);
                       data.updateLoc();
                     } catch (error) {
                       print("Error");
                     }
                   },
                   icon: Icon(Icons.location_history)),
               GetBuilder<MyData>(
                   init: MyData(),
                   builder: ((controller) => Text(controller.loc))),
             ],
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(left: 20),
           child: Container(
             height: 124,
             child: ListView(
               scrollDirection: Axis.horizontal,
               children: [
                 Column(
                   children: [
                     Containers(
                       width: 90,
                       height: 90,
                       child: Icon(
                         Icons.coffee,
                         size: 60,
                       ),
                     ),
                     Text("Drink")
                   ],
                 ),
                 Column(
                   children: [
                     Containers(
                       width: 90,
                       height: 90,
                       child: Icon(
                         Icons.food_bank_outlined,
                         size: 60,
                       ),
                     ),
                     Text("Food")
                   ],
                 ),
                 Column(
                   children: [
                     Containers(
                       width: 90,
                       height: 90,
                       child: Icon(
                         Icons.cake_outlined,
                         size: 60,
                       ),
                     ),
                     Text("Cake")
                   ],
                 ),
                 Column(
                   children: [
                     Containers(
                       width: 90,
                       height: 90,
                       child: Icon(
                         Icons.shopping_cart_checkout_sharp,
                         size: 60,
                       ),
                     ),
                     Text("Snack")
                   ],
                 ),
                 Column(
                   children: [
                     Containers(
                       width: 90,
                       height: 90,
                       child: Icon(
                         Icons.favorite_outline_sharp,
                         size: 60,
                       ),
                     ),
                     Text("Other")
                   ],
                 ),
               ],
             ),
           ),
         ),
         Spacing(height: 20),
         Padding(
           padding: const EdgeInsets.symmetric(
             horizontal: 20,
           ),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(
                 "Food Menu",
                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
               ),
               Text("View all")
             ],
           ),
         ),
         Padding(
           padding: EdgeInsets.only(left: 20),
           child: Container(
             height: Get.height / 2.6,
             child: ListView(
               scrollDirection: Axis.horizontal,
               children: [
                 Column(
                   children: [
                     Row(
                       children: [
                         Containers(
                           width: 130,
                           height: 130,
                           child: FImg(imagee: "images/pizz.png", txt: "Burger"),
                         ),
                         Containers(
                           width: 130,
                           height: 130,
                           child: FImg(imagee: "images/pizz.png", txt: "Pizza"),
                         ),
                         Containers(
                           width: 130,
                           height: 130,
                           child: FImg(imagee: "images/nudels.png", txt: "BBQ"),
                         )
                       ],
                     ),
                     Row(
                       children: [
                         Containers(
                           width: 130,
                           height: 130,
                           child: FImg(imagee: "images/furt.png", txt: "Fruit"),
                         ),
                         Containers(
                           width: 130,
                           height: 130,
                           child: FImg(imagee: "images/sushi.png", txt: "Sushi"),
                         ),
                         Containers(
                           width: 130,
                           height: 130,
                           child:
                               FImg(imagee: "images/nudels.png", txt: "Noodle"),
                         )
                       ],
                     ),
                   ],
                 )
               ],
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.symmetric(
             horizontal: 20,
           ),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(
                 "Near Me",
                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
               ),
               Text("View all")
             ],
           ),
         ),
         Restaurants()
       ],
     );
   }}