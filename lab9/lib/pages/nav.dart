import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:lab9/pages/list.dart';
import 'package:lab9/pages/order.dart';
import 'package:lab9/pages/profil.dart';

import 'home.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int sindex = 0;
  final Screens = [
  home(),Order(), list() ,Ptofile(),

  ]; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body:Screens [sindex] ,

      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              sindex = index;
            });
          },
          currentIndex: sindex,
          selectedItemColor: Color(0xffD35400),
          backgroundColor: Color(0xffD35400),
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                label: "Home", icon: Image.asset("images/store 1 (1).png")),
            BottomNavigationBarItem(
                label: "Order",
                icon: Image.asset("images/shopping-list 1.png")),
            BottomNavigationBarItem(
                label: "Mylist", icon: Image.asset("images/Rectangle 1.png")),
            BottomNavigationBarItem(
                label: "profile", icon: Image.asset("images/user 1.png"))
          ]),
     
    );
  }
}
