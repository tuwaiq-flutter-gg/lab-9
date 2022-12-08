import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/Pages/Home.dart';

class Button extends StatelessWidget {
  const Button({super.key, this.title,});
final String? title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => const Home()));}, 
      child: Text(title.toString(),style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold ),),
      style: ElevatedButton.styleFrom(minimumSize: Size(350, 40),primary: Color(0xffECF0F1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),))
     
    ;
  }
}