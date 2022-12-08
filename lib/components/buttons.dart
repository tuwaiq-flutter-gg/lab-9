import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab9/components/datatheme.dart';
import 'package:lab9/pages/homeMenue.dart';
import 'package:lab9/pages/signup.dart';

class buttons extends StatelessWidget {
  const buttons({super.key, required this.buttonCaption, this.pageOff});
  final String buttonCaption;final  pageOff;//pageTo;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(350, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(33),
          ),
          backgroundColor: backcolorOrange,
        ),
        onPressed: () {
          if (buttonCaption =="sing in"|| buttonCaption=="sign Up"){
         // Get.to(()=>("pageOff"));
          Get.off(()=> const homeMenue());}
          //  else if (buttonCaption=="sign Up"){

          // Get.off(()=> const homeMenue());
          // };
          },
       // },
       // child: InkWell(
          child: Text(buttonCaption),
          // // onTap: () {
          // //   Navigator.pop(context, true);
          // },
        // ),
      ),
    );
  }
}
