import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shatha_lab9/Style/StylesFunctions.dart';
import 'package:shatha_lab9/Style/StylesList.dart';
import 'package:shatha_lab9/components/bottomNavBar.dart';
import 'package:shatha_lab9/view/HomePage.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: background,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new , color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: Container(
        color: background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Align(alignment: Alignment.centerLeft , child: customBoldText(text: "Sign In", color: darkText, size: 24)),
            
            
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 20.0 , left: 20.0),
              child: customTextField(hint: "Enter Username"),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 20.0 , left: 20.0),
              child: customTextField(hint: "Enter Password"),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 20.0 , left: 20.0),
              child: customTextField(hint: "Re-enter Password"),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: customButton(type: Buttons.orange, text: "Sign Up" , onPressed: (){
                Get.offAll(const StartPage());
              }),
            ),


            Align(
              alignment: Alignment.centerRight,
              child: customRegularText(text: "Forgot Password?", verySmall: false),
            ),
            
            Row(
              children: [
                Container(
                  height: 5.0,
                  width: MediaQuery.of(context).size.width*0.60,
                  color: Colors.white30,
                ),
                customRegularText(text: "Or connect with", verySmall: false),

              ],
            ),


            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("images/PngItem_39514 1.png", fit: BoxFit.fitHeight,),
                ],
              ),
            )
          ],
        ),
      ),


    );
  }
}