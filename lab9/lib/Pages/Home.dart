import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/Component/Buttonbar.dart';
import 'package:lab9/Component/ContainerColor.dart';
import 'package:lab9/Component/FoodMenu.dart';
import 'package:lab9/Component/TextFiled.dart';
import 'package:lab9/Component/listIcons.dart';
import 'package:lab9/Component/reviewMail.dart';
import 'package:lab9/Component/twoText.dart';
import 'package:lab9/Foodmenu2.dart';
import 'package:lab9/Pages/Account.dart';
import 'package:lab9/Pages/Order.dart';
import 'package:lab9/Pages/Voucher.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   int selectedIndex = 0;
 void onItemTapped(int index) {
    setState(() {
       onTap: (index) => setState(() => selectedIndex = index);
    });
  }

    final ListPages = [
      Home(),
      Order(),
      Voucher(), 
      Account(),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          SizedBox(height: 25,),
          Padding(
         padding: const EdgeInsets.only(left: 20, right: 20),
         child: TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(25),
            ),
            fillColor: Color(0xffECF0F1),
            hintText:"Search"),
             ),
       ),
       SizedBox(height: 10,),
       
      //location
       Padding(
         padding: const EdgeInsets.only(left:30.0),
         child: Row(mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.location_on),
            Padding(
              padding: const EdgeInsets.only(top:6.0,left: 3),
              child: Text( "9 West 46 Th Street, New York City",style: TextStyle(fontSize: 9,fontWeight:FontWeight.bold,),textAlign: TextAlign.center,),
            ),
          ],
         ),
       ),
       ////////////////////////////////////////////////////////////
         //list food 
      
// decoration: BoxDecoration(
//       color: (index % 2 == 0) ? Color(0xff3498DB) : Color(0xff9B59B6),
//        borderRadius: BorderRadius.all(Radius.circular(20))),

         Container(height: 150,
           child: ListView(scrollDirection: Axis.horizontal,
             children: [
               ListIcons(image: "images/coffee-cup 1.png", title: "Drink"),
               Padding(
             padding: const EdgeInsets.all(20.0),
             child: Row(mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Column(mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Container(
                       height: 60,width: 60,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xffD35400)),
                       child: Image.asset("images/burger (1) 1.png"),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left:12.0,top: 2),
                       child: Text("Food",style: TextStyle(fontSize: 12),),
                     ),
                    ],
                 )
               ],
             ),
           ),

               ListIcons(image: "images/piece-of-cake 1.png", title: "Cake"),
               ListIcons(image: "images/potato-chips 1.png", title: "Snack"),
               
               ListIcons(image: "images/piece-of-cake 1.png", title: "helthy"),
               ListIcons(image: "images/potato-chips 1.png", title: "supermarket"),
             ],
           ),
         ),
       
// //////////////////////////////////////////////


         TextTwoSide(title: "Food Menu",title1: "View all"),
         SizedBox(height: 20,),
// /////////////////////////////////////////////////////////////         
  //  FoodMenu(image: "images/image.png",title: "Burgers"), 
 FoodMenu(title: "Burgers",image:"images/image.png",image1: "images/image (1).png",title1:"Pizza" ,image2:"images/image (5).png" ,title2:"BBQ" ),
 //FoodMenu2(title: "Frut",image:"images/image (3).png",image1: "images/image (4).png",title1:"suchi" ,image2:"images\image (2).png" ,title2:"Nodels" ),

/////////////////////////////////////////////////////////////         

         TextTwoSide(title: "Near Me",title1: "View all"),
         SizedBox(height: 10,),
         ReviewMail(image: "images/Rectangle 6 (1).png",title: "Dapur Ijah Restaurant",title1: "13 th Street, 46 W 12th St, NY",title2: "3 min - 1.1 km"),

        ],
      ) ,



          bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xffD35400),
          unselectedItemColor: Color(0xff808080),
         backgroundColor: Colors.white,
         elevation: 0,
         onTap: onItemTapped,

          items: [
            BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home_outlined),),
            BottomNavigationBarItem(label: "Order",icon: Icon(Icons.list_alt_outlined)),
            BottomNavigationBarItem(label: "My List",icon: Icon(IconData(0xe0f1, fontFamily: 'MaterialIcons'))),
            BottomNavigationBarItem(label: "Profile",icon: Icon(Icons.person)),
            ]),
            // body:ListPages.elementAt(selectedIndex)
            

    );
  }
}