import 'package:flutter/src/widgets/container.dart';
 import 'package:flutter/src/widgets/framework.dart';
 import 'package:flutter/material.dart';
 import 'package:get/get.dart';
import 'package:khuloudlab9/componet/contenr.dart';
import 'package:khuloudlab9/componet/spacing.dart';

 class Orderslist extends StatelessWidget {
   const Orderslist({super.key});

   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.symmetric(
         horizontal: 20,
       ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Containers(
             width: 80,
             height: 80,
             child: Image.asset("images/ord.png"),
           ),
           SizedBox(
             width: 5,
           ),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 "Dogmie jagong tutung",
                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
               ),
               Spacing(height: 5),
               Row(
                 children: [
                   Icon(Icons.thumb_up_alt),
                   Text(
                     "999+ |",
                     style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                   ),
                   Icon(Icons.thumb_down_alt),
                   Text(
                     "93+",
                     style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                   )
                 ],
               ),
               Text(
                 "\$99.99",
                 style: TextStyle(
                     fontSize: 10,
                     fontWeight: FontWeight.bold,
                     color: Colors.lightGreen),
               )
             ],
           ),
         ],
       ),
     );
   }
 }