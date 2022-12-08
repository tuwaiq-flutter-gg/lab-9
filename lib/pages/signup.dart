//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab9/components/buttons.dart';
import 'package:lab9/components/texts.dart';
import 'package:lab9/pages/homeMenue.dart';

class signUpPage extends StatelessWidget {
  const signUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: 22,
    ),
     body: 
ListView(
  children: [
    const SizedBox(height: 200,),
      const textTitle(texTitle: "Sign Un"),
      textfilds( titlee: "Username" ),
      textfilds(titlee: "Password",passAsStars: true,),
       textfilds(titlee: "REPassword",passAsStars: true,),
    const buttons(buttonCaption: "sing Up"),
       
      
       
         Padding(
           padding: const EdgeInsets.only(left: 150),
           child: InkWell(child: textNormal(textnormal: "Forgot Password?",),
           
           onTap: () =>Get.off(()=> homeMenue()) ,),
         )

       

                     
        //          onTap: () {  Get.off(()=> homeMenue()); )
      //buttons(buttonCaption: buttonCaption)


  ],
),
     


    
    );
  }
}