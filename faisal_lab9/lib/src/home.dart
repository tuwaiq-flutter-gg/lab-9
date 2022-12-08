// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:faisal_lab9/comp/Search.dart';
import 'package:faisal_lab9/comp/Title.dart';
import 'package:faisal_lab9/comp/buttonComp.dart';
import 'package:faisal_lab9/comp/foodCate.dart';
import 'package:faisal_lab9/comp/foodmenu.dart';
import 'package:faisal_lab9/comp/textfield.dart';
import 'package:faisal_lab9/main.dart';
import 'package:faisal_lab9/src/account.dart';
import 'package:faisal_lab9/src/homepage.dart';
import 'package:faisal_lab9/src/mylist.dart';
import 'package:faisal_lab9/src/order.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int currentIndex = 0;
  final pages = [homepage(), order(), mylist(), account()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   elevation: 0,
        //   title: Text(
        //     "Home",
        //     style: TextStyle(color: Colors.black),
        //   ),
        //   centerTitle: true,
        //   leading: Icon(
        //     Icons.arrow_back_ios,
        //     color: Colors.black,
        //     size: 20,
        //   ),
        // ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => setState(() => currentIndex = index),
          elevation: 0,
          iconSize: 25,
          currentIndex: currentIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: or,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("images/store.png")), label: "Home"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("images/shooping.png")),
                label: "Order"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark), label: "My List"),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/user.png")),
              label: "Profile",
            ),
          ],
        ),
        body: SafeArea(child: pages[currentIndex]));
  }
}
