import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lab9/pages/Singin.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 100, 0),
            child: Row(
              children: [
                Container(
                    height: 30,
                    width: 30,
                    child: InkWell(
                        onTap: () {
                          Get.back(); 
                        },
                        child: Image.asset("images/back.png"))),
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: Text("Reviwe Food",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          )
        
        ,Padding(
          padding: const EdgeInsets.fromLTRB(0,50,150,0),
          child: Text("Enter Old password"),
          
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
hintText: "Password",fillColor: Color(0xffECF0F1),filled: true,
hintStyle: TextStyle(color: Color(0xff000000)  ))  ),
  
    
  
    ),
  
  ),
),
        Padding(
          padding: const EdgeInsets.fromLTRB(0,50,150,0),
          child: Text("Create New Password"),
          
        ),
        
Padding(
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
hintText: "Enter new Password",fillColor: Color(0xffECF0F1),filled: true,
hintStyle: TextStyle(color: Color(0xff000000)  ))  ),
  
    
  
    ),
  
  ),
        ),Padding(
  padding: const EdgeInsets.only(top:35),
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
hintText: "Re-Enter new Password",fillColor: Color(0xffECF0F1),filled: true,
hintStyle: TextStyle(color: Color(0xff000000)  ))  ),
  
    
  
    ),
  
  ),)
      ,InkWell(
  
onTap: () {
              Get.to(() => Singin());
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
  
        child: Text("Save",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
  
      )
  
    ),
  
  ),
)
      
      
        ],
      ),
    );
  }
}
