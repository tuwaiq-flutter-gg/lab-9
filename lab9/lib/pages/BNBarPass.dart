import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/Styles/Colors.dart';
import 'package:lab9/pages/Home.dart';
import 'package:lab9/pages/MyList.dart';
import 'package:lab9/pages/Order.dart';

import 'ChangPassword.dart';

class BNBarPass extends StatefulWidget {
  BNBarPass({super.key});

  @override
  State<BNBarPass> createState() => _BNBarPassState();
}

class _BNBarPassState extends State<BNBarPass> {
  int clickPass = 3;

  List PagesPass = [Home(), Order(), MyList(), ChangPassword()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PagesPass[clickPass],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red,

          elevation: 0,
          currentIndex: 3,
          selectedItemColor: orange,
          unselectedItemColor: Gray,
          showUnselectedLabels: true,
          onTap: ((value) {
            setState(() {
              clickPass = value;
            });
          }),
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.store,
              ),
            ),
            BottomNavigationBarItem(
              label: "Order",
              icon: Icon(
                Icons.list_alt,
              ),
            ),
            BottomNavigationBarItem(
              label: "My List",
              icon: Icon(
                Icons.bookmark,
              ),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.person),
            ),
          ]),
    );
  }
}
