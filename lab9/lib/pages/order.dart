import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
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
  )

,Padding(
  padding: const EdgeInsets.only(top:25.0),
  child:   SizedBox(
    height: 90,
    width: 350,
    child: Row(children: [
    
    
    
    Image.asset("images/Rectangle 6.png")
    
    
    
    ,Column(
    
      
    
      crossAxisAlignment: CrossAxisAlignment.start,
    
      children: [
    
    
    
        Padding(
    
          padding: const EdgeInsets.only(left:20.0 ,bottom: 4),
    
          child: Text("Dogmie jagong tutung",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
    
        ),
    
   Padding(
    
        padding: const EdgeInsets.only(left:16),
    
        child: Row(
    
          children: [
    
           
    
    Text(r"$99.99",style: TextStyle(color: Colors.green),)
    
          ],
    
        ),
    
      )
    
    
    
     
    ],)
    
      ],),
  ),
) ,Padding(
  padding: const EdgeInsets.only(top:25.0),
  child:   SizedBox(
    height: 90,
    width: 350,
    child: Row(children: [
    
    
    
    Image.asset("images/Rectangle 6.png")
    
    
    
    ,Column(
    
      
    
      crossAxisAlignment: CrossAxisAlignment.start,
    
      children: [
    
    
    
        Padding(
    
          padding: const EdgeInsets.only(left:20.0 ,bottom: 4),
    
          child: Text("Dogmie jagong tutung",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
    
        ),
    
   Padding(
    
        padding: const EdgeInsets.only(left:16),
    
        child: Row(
    
          children: [
    
           
    
    Text(r"$99.99",style: TextStyle(color: Colors.green),)
    
          ],
    
        ),
    
      )
    
    
    
     
    ],)
    
      ],),
  ),
) ,Padding(
  padding: const EdgeInsets.only(top:25.0),
  child:   SizedBox(
    height: 90,
    width: 350,
    child: Row(children: [
    
    
    
    Image.asset("images/Rectangle 6.png")
    
    
    
    ,Column(
    
      
    
      crossAxisAlignment: CrossAxisAlignment.start,
    
      children: [
    
    
    
        Padding(
    
          padding: const EdgeInsets.only(left:20.0 ,bottom: 4),
    
          child: Text("Dogmie jagong tutung",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
    
        ),
    
   Padding(
    
        padding: const EdgeInsets.only(left:16),
    
        child: Row(
    
          children: [
    
           
    
    Text(r"$99.99",style: TextStyle(color: Colors.green),)
    
          ],
    
        ),
    
      )
    
    
    
     
    ],)
    
      ],),
  ),
) ,Padding(
  padding: const EdgeInsets.only(top:25.0),
  child:   SizedBox(
    height: 90,
    width: 350,
    child: Row(children: [
    
    
    
    Image.asset("images/Rectangle 6.png")
    
    
    
    ,Column(
    
      
    
      crossAxisAlignment: CrossAxisAlignment.start,
    
      children: [
    
    
    
        Padding(
    
          padding: const EdgeInsets.only(left:20.0 ,bottom: 4),
    
          child: Text("Dogmie jagong tutung",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
    
        ),
    
   Padding(
    
        padding: const EdgeInsets.only(left:16),
    
        child: Row(
    
          children: [
    
           
    
    Text(r"$99.99",style: TextStyle(color: Colors.green),)
    
          ],
    
        ),
    
      )
    
    
    
     
    ],)
    
      ],),
  ),
) 
      

],),


    );
  }
}