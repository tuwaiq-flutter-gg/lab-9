import 'package:flutter/material.dart';

import 'package:lab9/pages/homePage.dart';
import 'package:lab9/pages/myList.dart';
import 'package:lab9/pages/orderPage.dart';
import 'package:lab9/pages/profilePage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indexSel = 0;
  List<Widget> widgetList = [HomePage(), OrderPage(), MyList(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexSel,
          selectedItemColor: Color(0xffD35400),
          unselectedItemColor: Color(0x50000000),
          onTap: (index) {
            setState(() {
              indexSel = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.store), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_rounded), label: "Order"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark), label: "My List"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded), label: "Profile"),
          ]),
      body: widgetList.elementAt(indexSel),
    );
  }
}
