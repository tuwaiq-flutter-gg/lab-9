
 import 'package:flutter/material.dart';
 import 'package:flutter/src/widgets/container.dart';
 import 'package:flutter/src/widgets/framework.dart';
 import 'package:get/get.dart';
import 'package:khuloudlab9/componet/button.dart';
import 'package:khuloudlab9/componet/spacing.dart';
import 'package:khuloudlab9/componet/txtf.dart';
import 'package:khuloudlab9/main.dart';

 class CPwd extends StatelessWidget {
   const CPwd({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
         centerTitle: true,
         title: Text(
           "Change Password",
           style: TextStyle(
               fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
         ),
         elevation: 0,
         backgroundColor: Colors.white,
         leading: IconButton(
             onPressed: () {
               Get.back();
             },
             icon: Icon(
               Icons.arrow_back_ios,
               color: Colors.black,
             )),
       ),
       body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Spacing(height: 15),
             Text("Enter Old Password"),
             Spacing(height: 15),
             Txtf(hint: "Password"),
             Spacing(height: 15),
             Text("Create New Password"),
             Spacing(height: 15),
             Txtf(hint: "Enter new Password"),
             Spacing(height: 15),
             Txtf(hint: "Re-Enter new Password"),
             Spacing(height: Get.height / 2.4),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: InkWell(
                 onTap: () {
                   Get.back();
                 },
                 child: Bbar(
                     bname: "Save", textcolor: Colors.white, bcolor: myorange),
               ),
             )
           ],
         ),
       ),
     );
   }
 }