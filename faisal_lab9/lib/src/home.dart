// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:faisal_lab9/comp/Title.dart';
import 'package:faisal_lab9/comp/buttonComp.dart';
import 'package:faisal_lab9/comp/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 20,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          iconSize: 25,
          currentIndex: 0,
          showSelectedLabels: true,
          showUnselectedLabels: true,
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
          ]),
    );
  }
}
