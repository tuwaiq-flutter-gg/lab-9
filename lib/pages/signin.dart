import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab9/components/buttons.dart';
import 'package:lab9/components/texts.dart';
import 'package:lab9/pages/homeMenue.dart';
import 'package:lab9/pages/signup.dart';

class signinPage extends StatelessWidget {
  const signinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: 22,
    ),
     body: 
ListView(
  children: [
    const SizedBox(height: 200,),
      const textTitle(texTitle: "Sign in"),
      textfilds( titlee: "Username" ),
      textfilds(titlee: "Password",passAsStars: true,),
    buttons(buttonCaption: "sing in",pageOff: "homeMenue",),
       
      
       
         Padding(
           padding: const EdgeInsets.only(left: 150),
           child: InkWell(child: textNormal(textnormal: "Forgot Password?\n\f\r\r\r\r               sign Up",),
           
           onTap: () =>Get.to(()=> homeMenue())),
         )

       

                     
        //          onTap: () {  Get.off(()=> homeMenue()); )
      //buttons(buttonCaption: buttonCaption)


  ],
),
     


    );
  }
}