import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lab9/pages/changepassword.dart';

import 'Singin.dart';

class Ptofile extends StatefulWidget {
  const Ptofile({super.key});

  @override
  State<Ptofile> createState() => _PtofileState();
}

class _PtofileState extends State<Ptofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: Column(children: [
Padding(
  padding: const EdgeInsets.only(top:100),
  child:   Center(child: CircleAvatar(
    
    radius: 100,
    backgroundColor: Colors.white,
    child: Image.asset("images/Ellipse 6.png"),),),
)
,Center(child:Text("itoh",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),) ,)
,Center(child: Text("+1 11229382748"),)




,Padding(
  padding: const EdgeInsets.only(top: 16,right: 8,left: 8,bottom: 8),
  child:   Column(
  
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
    crossAxisAlignment: CrossAxisAlignment.start,
  
    children: [
  
  Padding(
  
    padding: const EdgeInsets.all(8.0),
  
    child:   Row(
  
    
  
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
    
  
      children: [
  
    
  
            
  
    
  
        
  
    
  
         
  
    
  
            Text("My Profile",style: TextStyle(fontWeight: FontWeight.bold),),  
  
    
  
          Image.asset("images/chevron-right.png")
  
    
  
        
  
    
  
        
  
    
  
      ],
  
    
  
    ),
  
  ),Padding(
  
    padding: const EdgeInsets.all(8.0),
  
    child:   InkWell(

onTap: () {  Get.to(() => Password());
  


},

      child: Row(
      
      
      
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
      
      
        children: [
      
      
      
              
      
      
      
          
      
      
      
           
      
      
      
              Text("My Change Password",style: TextStyle(fontWeight: FontWeight.bold),),  
      
      
      
            Image.asset("images/chevron-right.png")
      
      
      
          
      
      
      
          
      
      
      
        ],
      
      
      
      ),
    ),
  
  )
  
  ,Padding(
  
    padding: const EdgeInsets.all(8.0),
  
    child:   Row(
  
    
  
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
    
  
      children: [
  
    
  
            
  
    
  
        
  
    
  
         
  
    
  
            Text("Payment Settings",style: TextStyle(fontWeight: FontWeight.bold),),  
  
    
  
          Image.asset("images/chevron-right.png")
  
    
  
        
  
    
  
        
  
    
  
      ],
  
    
  
    ),
  
  )
  
  ,Padding(
  
    padding: const EdgeInsets.all(8.0),
  
    child:   Row(
  
    
  
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
    
  
      children: [
  
    
  
            
  
    
  
        
  
    
  
         
  
    
  
            Text("My Voucher",style: TextStyle(fontWeight: FontWeight.bold),),  
  
    
  
          Image.asset("images/chevron-right.png")
  
    
  
        
  
    
  
        
  
    
  
      ],
  
    
  
    ),
  
  )
  
  ,Padding(
  
    padding: const EdgeInsets.all(8.0),
  
    child:   Row(
  
    
  
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
    
  
      children: [
  
    
  
            
  
    
  
        
  
    
  
         
  
    
  
            Text("Notification",style: TextStyle(fontWeight: FontWeight.bold),),  
  
    
  
          Image.asset("images/chevron-right.png")
  
    
  
        
  
    
  
        
  
    
  
      ],
  
    
  
    ),
  
  )
  
  ,Padding(
  
    padding: const EdgeInsets.all(8.0),
  
    child:   Row(
  
    
  
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
    
  
      children: [
  
    
  
            
  
    
  
        
  
    
  
         
  
    
  
            Text("About Us",style: TextStyle(fontWeight: FontWeight.bold),),  
  
    
  
          Image.asset("images/chevron-right.png")
  
    
  
        
  
    
  
        
  
    
  
      ],
  
    
  
    ),
  
  )
  
  ,Padding(
  
    padding: const EdgeInsets.all(8.0),
  
    child:   Row(
  
    
  
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
    
  
      children: [
  
    
  
            
  
    
  
        
  
    
  
         
  
    
  
            Text("Contact Us",style: TextStyle(fontWeight: FontWeight.bold),),  
  
    
  
          Image.asset("images/chevron-right.png")
  
    
  
        
  
    
  
        
  
    
  
      ],
  
    
  
    ),
  
  )
  
  
  
  
  
  
  
  
  
  ],),
)


,

InkWell(
  
onTap: () {
              Get.to(() => Singin());
            },
  child:   Padding(
  
    padding: const EdgeInsets.only(top:8),
  
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
  
        child: Text("Sign Out",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
  
      )
  
    ),
  
  ),
)

],),



    );
  }
}