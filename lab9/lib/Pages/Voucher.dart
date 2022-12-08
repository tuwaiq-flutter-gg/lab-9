import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/Component/ColorButton.dart';
import 'package:lab9/Component/TitleandIcon.dart';
import 'package:lab9/Component/discound.dart';
import 'package:lab9/Pages/Home.dart';

class Voucher extends StatefulWidget {
  const Voucher({super.key});

  @override
  State<Voucher> createState() => _VoucherState();
}

class _VoucherState extends State<Voucher> {
     int selectedIndex = 2;
 void _onItemTapped(int index) {
    setState(() {
      selectedIndex = 2;
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0,centerTitle: true,
        leading:  IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined),color: Colors.black, onPressed: ()
         {Navigator.push(context,MaterialPageRoute(builder: (context) => const Home())); },),
      title:Text("My List",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),) ,),
      body: Column(
        children: [
          SizedBox(height: 15,),
          //TitleIcon(title: "My List"),   
          SizedBox(height: 50,),
          Discound(image:"images/Rectangle 7.png" ,title:"Sale off 30% for Pizza" ,title1:"Apr 10 - Apr 30" ,title2:"11 days left" ),
          SizedBox(height: 15,),
          Discound(image:"images/Rectangle 7.png" ,title:"Sale off 30% for Pizza" ,title1:"Apr 10 - Apr 30" ,title2:"11 days left" ),
          SizedBox(height: 15,),
          Discound(image:"images/Rectangle 7.png" ,title:"Sale off 30% for Pizza" ,title1:"Apr 10 - Apr 30" ,title2:"11 days left" ),
         
          SizedBox(height: 150,),
          ColorButton(title: "Save",)
        ],
      ),
             bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xffD35400),
          unselectedItemColor: Color(0xff808080),
         backgroundColor: Colors.white,
         elevation: 0,
          currentIndex: 2,
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