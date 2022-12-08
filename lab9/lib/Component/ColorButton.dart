import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/Pages/Home.dart';

class ColorButton extends StatelessWidget {
  const ColorButton({super.key, this.title,});
final String? title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => const Home()));}, 
        child: Text(title.toString(),style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold ),),
        style: ElevatedButton.styleFrom(minimumSize: Size(370, 50),primary: Color(0xffD35400),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),)),
    )
     
    ;
  }
}