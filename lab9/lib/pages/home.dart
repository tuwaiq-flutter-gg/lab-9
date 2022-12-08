import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Column(children: [

Padding(
  padding: const EdgeInsets.only(top:45),
  child:   Center(
  
    child:   Container(
    decoration: 
    BoxDecoration(border: Border.all(
  
              color: Color(0xffECF0F1), // Set border color
  
              width: 4.0),   
  
          borderRadius: BorderRadius.all(
  
              Radius.circular(20.0)) ),
  height: 50,
      width: 350,
      child:   TextField(
       decoration: InputDecoration(
 fillColor: Color(0xffECF0F1),

   border: InputBorder.none,  
hintText: "Search",filled: true,
hintStyle: TextStyle(color: Color(0xff000000)  )
,icon: Icon(Icons.search,color: Color(0xffECF0F1),),)  ),),


  
    
  
    ),
  
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("images/Group.png"),
        )
,Text("9 West 46 Th Street, New York City"),
      ],
    ),
  )
,Container(
  width: MediaQuery.of(context).size.width,
  height: 122,
  
  
  
  
  child:ListView(
    scrollDirection: Axis.horizontal,


children: [


 
           

  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(children: [
InkWell(
    
    child:   Container(height: 90,
    
    width: 90,  
    
    
    
               
    
    color: Color(0xffECF0F1),
    
    child:Center(child: Image.asset("images/coffee-cup 1.png",fit: BoxFit.cover,),)),
)
,Text("coffee")

    ],),
  ), Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(children: [
InkWell(
    
    child:   Container(height: 90,
    
    width: 90,  
    
    
    
               
    
    color: Colors.orange,
    
    child:Center(child: Image.asset("images/burger (1) 1.png",fit: BoxFit.cover,),)),
)
,Text("Food")

    ],),
  ),Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(children: [
InkWell(
    
    child:   Container(height: 90,
    
    width: 90,  
    
    
    
               
    
    color: Color(0xffECF0F1),
    
    child:Center(child: Image.asset("images/piece-of-cake 1.png",fit: BoxFit.cover,),)),
)
,Text("Cake")

    ],),
  ),Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(children: [
InkWell(
    
    child:   Container(height: 90,
    
    width: 90,  
    
    
    
               
    
    color: Color(0xffECF0F1),
    
    child:Center(child: Image.asset("images/potato-chips 1.png",fit: BoxFit.cover,),)),
)
,Text("Snack")




    ],),
  ),






  

],

  ) ,)


,Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Row(
  
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
    children: [
  
          Text("Food Menu",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
  
      
  
      Text("view all"),
  
    ],
  
  ),
)
   ,Container(
  width: MediaQuery.of(context).size.width,
  height: 122,
  
  
  
  
  child:ListView(
    scrollDirection: Axis.horizontal,


children: [


 
           

  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(children: [
InkWell(
    
    child:    Stack(
      children: [
       
        
        Container(height: 100,
        
        width: 105,  
        
        
        
                   
        
        color: Color(0xff3498DB))
      ,  
       Text("Burgers",style: TextStyle(color: Colors.white),),
        
  Padding(
    padding: const EdgeInsets.only(top: 4,left: 2,right: 5,bottom: 2),child:Container(
      height: 100,
      width: 100,
      child: Image.asset("images/image (1).png",fit: BoxFit.cover,)),)
      ],
    ),
)


    ],),
  ), Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(children: [
InkWell(   child:  Stack(
      children: [
       
        
        Container(height: 100,
        
        width: 105,  
        
        
        
                   
        
        color: Color(0xff9B59B6))
      ,  
       Text("Pizza",style: TextStyle(color: Colors.white),),
        
  Padding(
    padding: const EdgeInsets.only(top: 4,left: 2,right: 5,bottom: 2),child:Container(
      height: 100,
      width: 100,
      child: Image.asset("images/image (2).png",fit: BoxFit.cover,)),)
      ],
    ),
    
)


    ],),
  ),Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(children: [
InkWell(
    
     child:  Stack(
      children: [
       
        
        Container(height: 100,
        
        width: 105,  
        
        
        
                   
        
        color: Color(0xff3498DB))
      ,  
       Text("BBQ",style: TextStyle(color: Colors.white),),
        
  Padding(
    padding: const EdgeInsets.only(top: 4,left: 2,right: 5,bottom: 2),child:Container(
      height: 100,
      width: 100,
      child: Image.asset("images/image (6).png",fit: BoxFit.cover,)),)
      ],
    ),
    
)


    ],),
  ),Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(children: [



    ],),
  ),Padding(
    padding: const EdgeInsets.all(0),
    child: Column(children: [



    ],),
  ),Padding(
    padding: const EdgeInsets.only(right: 20,top:5),
    child: Column(children: [



    ],),
  ),Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(children: [




    ],),
  ),






  

],

  ) ,)

   ,Container(
  width: MediaQuery.of(context).size.width,
  height: 122,
  
  
  
  
  child:ListView(
    scrollDirection: Axis.horizontal,


children: [


 
           

  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(children: [


    ],),
  ), Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(children: [
InkWell(   child:  Stack(
      children: [
       
        
        Container(height: 100,
        
        width: 130,  
        
        
        
                   
        
        color: Color(0xff9B59B6))
      ,  
       Text("Fruit",style: TextStyle(color: Colors.white),),
        
  Padding(
    padding: const EdgeInsets.only(top: 4,left: 2,right: 5,bottom: 2),child:Container(
      height: 100,
      width: 100,
      child: Image.asset("images/image (3).png",fit: BoxFit.cover,)),)
      ],
    ),
    
)


    ],),
  ),Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(children: [
InkWell(
    
     child:  Stack(
      children: [
       
        
        Container(height: 100,
        
        width: 105,  
        
        
        
                   
        
        color: Color(0xff3498DB))
      ,  
       Text("Sushi",style: TextStyle(color: Colors.white),),
        
  Padding(
    padding: const EdgeInsets.only(top: 4,left: 2,right: 5,bottom: 2),child:Container(
      height: 100,
      width: 100,
      child: Image.asset("images/image (4).png",fit: BoxFit.cover,)),)
      ],
    ),
    
)


    ],),
  ),Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(children: [



    ],),
  ),Padding(
    padding: const EdgeInsets.all(0),
    child: Column(children: [



    ],),
  ),Padding(
    padding: const EdgeInsets.only(right: 20,top:5),
    child: Column(children: [
InkWell(
    
 child:  Stack(
      children: [
       
        
        Container(height: 100,
        
        width: 105,  
        
        
        
                   
        
        color: Color(0xff9B59B6))
      ,  
       Text("Noodle",style: TextStyle(color: Colors.white),),
        
  Padding(
    padding: const EdgeInsets.only(top: 4,left: 2,right: 30,bottom: 2),child:Container(
      height: 100,
      width: 100,
      child: Image.asset("images/image (5).png",fit: BoxFit.cover,)),)
      ],
    ),
    
)


    ],),
  ),Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(children: [




    ],),
  ),






  

],

  ) ,)

,Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Row(
  
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
    children: [
  
          Text("Near Me",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
  
      
  
      Text("view all"),
  
    ],
  
  ),
)
   




  , Row(children: [

Image.asset("images/Rectangle 6.png")

,Column(
  
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [

    Padding(
      padding: const EdgeInsets.only(left:20.0 ,bottom: 4),
      child: Text("Dapur Ijah Restaurant",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
    ),
Padding(
    padding: const EdgeInsets.only(left:7),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(7),
          child: Image.asset("images/Group.png"),
        )
,Text("9 West 46 Th Street, New York City"),
      ],
    ),
  ),Padding(
    padding: const EdgeInsets.only(left:16),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(3),
          child: Image.asset("images/clock 1.png"),
        )
,Text("3 min - 1.1 km"),
      ],
    ),
  )

 ,Padding(
   padding: const EdgeInsets.only(left: 20,top: 15),
   child: Image.asset("images/star.png"),
 ),
],)
  ],) 
      ], 
      
      
      
      ),
    );
  }
}