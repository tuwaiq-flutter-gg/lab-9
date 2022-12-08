import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lab9/pages/nav.dart';
import 'package:lab9/pages/Singup.dart';

class Singin extends StatefulWidget {
  const Singin({super.key});

  @override
  State<Singin> createState() => _SinginState();
}

class _SinginState extends State<Singin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


body: Column(children: [

  Padding(
    padding: const EdgeInsets.fromLTRB(0,50,320,0),
    child: Container(
      height: 30,
      width: 30,
      child: Image.asset("images/back.png")),
  )

,Padding(
  padding: const EdgeInsets.fromLTRB(0,100
  ,250,0),
  child:   Text(
  
    
  
    
  
    "Sign In",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
)

,Padding(
  padding: const EdgeInsets.only(top:24),
  child:   Center(
  
    child:   Container(
    decoration: 
    BoxDecoration(border: Border.all(
  
              color: Color(0xffECF0F1), // Set border color
  
              width: 4.0),   // Set border width
  
          borderRadius: BorderRadius.all(
  
              Radius.circular(20.0)) ),
  height: 50,
      width: 350,
      child:   TextField(
       decoration: InputDecoration(
   border: InputBorder.none,  
hintText: "Username",fillColor: Color(0xffECF0F1),filled: true,
hintStyle: TextStyle(color: Color(0xff000000)  ))  ),
  
    
  
    ),
  
  ),
),Padding(
  padding: const EdgeInsets.only(top:24),
  child:   Center(
  
    child:   Container(
    decoration: 
    BoxDecoration(border: Border.all(
  
              color: Color(0xffECF0F1), // Set border color
  
              width: 4.0),   // Set border width
  
          borderRadius: BorderRadius.all(
  
              Radius.circular(20.0)) ),
  height: 50,
      width: 350,
      child:   TextField(
       decoration: InputDecoration(
   border: InputBorder.none,  
hintText: "PassWord",fillColor: Color(0xffECF0F1),filled: true,
hintStyle: TextStyle(color: Color(0xff000000)  ))  ),
  
    
  
    ),
  
  ),
),InkWell(

onTap: () {
              Get.to(() => Home());
            },


  child:   Padding(
  
    padding: const EdgeInsets.only(top:30),
  
    child:   Center(
  
    
  
      child:   Container(
  
        height: 50,
  
        margin: EdgeInsets.all(10),
  
        padding: EdgeInsets.all(10),
  
        alignment: Alignment.center,
  
        decoration: BoxDecoration(
  
          color: Color(0xffD35400),
  
          border: Border.all(
  
              color: Color(0xffD35400), 
  
              width: 3.0),   
  
          borderRadius: BorderRadius.all(
  
              Radius.circular(20.0)), 
  
         
  
        ),
  
        child: Text("Sign in",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
  
      )
  
    ),
  
  ),
)
,Padding(
  padding: const EdgeInsets.fromLTRB(200,10,0,0),
  child:   Text("Forgot Password?"),
)

,Padding(
  padding: const EdgeInsets.fromLTRB(0,140,0,0),
  child:   Row(children: [
  
  Container(height: 2,width: 260,color: Color(0xff34495E),)
  
  ,Padding(
    padding: const EdgeInsets.only(left: 8),
    child: Text("Or connect with"),
  )
  
  ],),
)

,Expanded(
  child:   Row(
  
    
  
  
    children: [
  
  Padding(
  
      
  
        padding: const EdgeInsets.fromLTRB(0,0,90,0),
  
      
  
        child:   Container(
          height: 300,
          width: 200,
          
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,0,10,0),
            child: Image.asset("images/PngItem_39514 1.png",),
          )),
  
      
  
      )
  
  ,Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(4,0,10,5),
        child: Image.asset("images/facebook 1.png"),
      ),
      
      
      
      Padding(
        padding: const EdgeInsets.fromLTRB(4,0,0,0),
        child: Image.asset("images/google-plus 1.png"),
      ),
    ],
  )
  
  ],),
)
]),



    );
  }
}