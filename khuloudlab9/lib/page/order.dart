import 'package:flutter/material.dart';
 import 'package:flutter/src/widgets/container.dart';
 import 'package:flutter/src/widgets/framework.dart';
 import 'package:get/get.dart';
import 'package:khuloudlab9/componet/button.dart';
import 'package:khuloudlab9/componet/orderes.dart';
import 'package:khuloudlab9/componet/spacing.dart';
import 'package:khuloudlab9/main.dart';
 

 class Orders extends StatelessWidget {
   const Orders({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
         centerTitle: true,
         title: Text(
           "Review Food",
           style: TextStyle(
               fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
         ),
         elevation: 0,
         backgroundColor: Colors.white,
         leading: IconButton(
             onPressed: () {},
             icon: Icon(
               Icons.arrow_back_ios,
               color: Colors.black,
             )),
       ),
       body: Column(
         children: [
           Container(
             height: Get.height / 2,
             child: ListView(
               children: [
                 Orderslist(),
                 Orderslist(),
                 Orderslist(),
               ],
             ),
           ),
           Spacing(height: Get.height / 4),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child:
                 Bbar(bname: "Send", textcolor: Colors.white, bcolor: myorange),
           )
         ],
       ),
     );
   }
 }
