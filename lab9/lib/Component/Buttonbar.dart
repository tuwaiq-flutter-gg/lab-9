
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/Pages/Account.dart';
import 'package:lab9/Pages/Home.dart';
import 'package:lab9/Pages/Order.dart';
import 'package:lab9/Pages/Voucher.dart';

class Buttonbar extends StatefulWidget {
  const Buttonbar({super.key});

  @override
  State<Buttonbar> createState() => _ButtonbarState();
}

class _ButtonbarState extends State<Buttonbar> {
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
            body:ListPages.elementAt(selectedIndex)

      )  ;
  }
}