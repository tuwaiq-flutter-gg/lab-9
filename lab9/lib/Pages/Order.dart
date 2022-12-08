import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/Component/ColorButton.dart';
import 'package:lab9/Component/TitleandIcon.dart';
import 'package:lab9/Component/discound.dart';
import 'package:lab9/Component/revew.dart';
import 'package:lab9/Pages/Home.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
       int selectedIndex = 1;
 void _onItemTapped(int index) {
    setState(() {
      selectedIndex = 1;
    });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0,centerTitle: true,
        leading:  IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined),color: Colors.black, onPressed: () 
        {Navigator.push(context,MaterialPageRoute(builder: (context) => const Home()));},),
      title:Text("Review Food",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),) ,),
      body: Column(
        children: [
          SizedBox(height: 50,),
       

          review(image:"images/Rectangle 6 (1).png" ,title:"Dogmie jagong tutung" ,title1:"999+ | " ,title2:"93+",title3: "\$99.99", ),
          SizedBox(height: 15,),
          review(image:"images/Rectangle 6 (1).png" ,title:"Dogmie jagong tutung" ,title1:"999+ | " ,title2:"93+",title3: "\$99.99", ),
          SizedBox(height: 15,),
          review(image:"images/Rectangle 6 (1).png" ,title:"Dogmie jagong tutung" ,title1:"999+ | " ,title2:"93+",title3: "\$99.99", ),


          SizedBox(height: 100,),
          ColorButton(title: "Send",)
        ],
      ),

              bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xffD35400),
          unselectedItemColor: Color(0xff808080),
         backgroundColor: Colors.white,
         elevation: 0,
          currentIndex: 1,
         onTap: _onItemTapped,

          items: [
            BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home_outlined)),
            BottomNavigationBarItem(label: "Order",icon: Icon(Icons.list_alt_outlined)),
            BottomNavigationBarItem(label: "My List",icon: Icon(IconData(0xe0f1, fontFamily: 'MaterialIcons'))),
            BottomNavigationBarItem(label: "Profile",icon: Icon(Icons.person)),
            ]),
    );
  }
}