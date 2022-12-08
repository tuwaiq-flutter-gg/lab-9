import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lab9/pages/Singin.dart';

class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

body: Column(children: [
 Padding(

    padding: const EdgeInsets.fromLTRB(0,50,110,0),
    child: Row(
      children: [
        Container(
          height: 30,
          width: 30,
          child: Image.asset("images/back.png")),
          Padding(
            padding: const EdgeInsets.only(left:130.0),
            child: Text("Reviwe Food",style: TextStyle(fontSize: 20,fontWeight: FontWeight
            .bold)),
          ),
      ],
    ),
  ),Padding(
  padding: const EdgeInsets.only(top:25.0),
  child:   SizedBox(
    height: 90,
    width: 350,
    child: Row(children: [
    
    
    
    Container(
      
      
      color: Color(0xffECF0F1),
      child: Image.asset("images/Rectangle 7.png",fit: BoxFit.cover,))
    
    
    
    ,Column(
    
      
    
      crossAxisAlignment: CrossAxisAlignment.start,
    
      children: [
    
    
    
        Padding(
    
          padding: const EdgeInsets.only(left:20.0 ,bottom: 4),
    
          child: Text("Sale off 30% for Pizza",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
    
        ),Padding(
    padding: const EdgeInsets.only(left:16),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(3),
          child: Image.asset("images/clock 1.png"),
        )
,Text("3 min - 1.1 km"),
    Padding(
      padding: const EdgeInsets.only(left:100.0),
      child: Checkbox(
          tristate: true,
        checkColor: Colors.orange,
         splashRadius: 4,
         focusColor: Colors.amber,
        value:  true , onChanged: (value) {
        
      },),
    )  ],
    ),
  )
    
   ,Padding(
    
        padding: const EdgeInsets.only(left:16),
    
        child: Row(
    
          children: [
    
           
    
    Text(r"11 days left",style: TextStyle(color: Color.fromARGB(255, 222, 3, 3)),)
    
          ],
    
        ),
    
      )
    
    
    
     
    ],)
    
      ],),
  ),
) ,

 Padding(
  padding: const EdgeInsets.only(top:25.0),
  child:   SizedBox(
    height: 90,
    width: 350,
    child: Row(children: [
    
    
    
    Container(
      
      
      color: Color(0xffECF0F1),
      child: Image.asset("images/Rectangle 7.png",fit: BoxFit.cover,))
    
    
    
    ,Column(
    
      
    
      crossAxisAlignment: CrossAxisAlignment.start,
    
      children: [
    
    
    
        Padding(
    
          padding: const EdgeInsets.only(left:20.0 ,bottom: 4),
    
          child: Text("Sale off 30% for Pizza",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
    
        ),Padding(
    padding: const EdgeInsets.only(left:16),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(3),
          child: Image.asset("images/clock 1.png"),
        )
,Text("3 min - 1.1 km"),
    Padding(
      padding: const EdgeInsets.only(left:100.0),
      child: Checkbox(
          tristate: true,
        checkColor: Colors.orange,
         splashRadius: 4,
         focusColor: Colors.amber,
        value:  false , onChanged: (value) {
        
      },),
    )  ],
    ),
  )
    
   ,Padding(
    
        padding: const EdgeInsets.only(left:16),
    
        child: Row(
    
          children: [
    
           
    
    Text(r"11 days left",style: TextStyle(color: Color.fromARGB(255, 222, 3, 3)),)
    
          ],
    
        ),
    
      )
    
    
    
     
    ],)
    
      ],),
  ),
) ,

Padding(
  padding: const EdgeInsets.only(top:25.0),
  child:   SizedBox(
    height: 90,
    width: 350,
    child: Row(children: [
    
    
    
    Container(
      
      
      color: Color(0xffECF0F1),
      child: Image.asset("images/Rectangle 7.png",fit: BoxFit.cover,))
    
    
    
    ,Column(
    
      
    
      crossAxisAlignment: CrossAxisAlignment.start,
    
      children: [
    
    
    
        Padding(
    
          padding: const EdgeInsets.only(left:20.0 ,bottom: 4),
    
          child: Text("Sale off 30% for Pizza",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
    
        ),Padding(
    padding: const EdgeInsets.only(left:16),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(3),
          child: Image.asset("images/clock 1.png"),
        )
,Text("3 min - 1.1 km"),
    Padding(
      padding: const EdgeInsets.only(left:100.0),
      child: Checkbox(
          tristate: true,
        checkColor: Colors.orange,
         splashRadius: 4,
         focusColor: Colors.amber,
        value:  false , onChanged: (value) {
        
      },),
    )  ],
    ),
  )
    
   ,Padding(
    
        padding: const EdgeInsets.only(left:16),
    
        child: Row(
    
          children: [
    
           
    
    Text(r"11 days left",style: TextStyle(color: Color.fromARGB(255, 222, 3, 3)),)
    
          ],
    
        ),
    
      )
    
    
    
     
    ],)
    
      ],),
  ),
) , ],),
    );
  }
}