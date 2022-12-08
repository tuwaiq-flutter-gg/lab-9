import 'package:flutter/material.dart';
import 'package:muhammed_lab9/Views/SignIn.dart';
import 'package:muhammed_lab9/Views/SignUp.dart';
import 'package:muhammed_lab9/Views/home.dart';
import 'package:muhammed_lab9/Views/list.dart';
import 'package:muhammed_lab9/Views/order.dart';
import 'package:muhammed_lab9/Views/profile.dart';

class PageNav extends StatefulWidget {
  const PageNav({super.key});

  @override
  State<PageNav> createState() => _PageNavState();
}

class _PageNavState extends State<PageNav> {
  int myIndex = 0;
  var navTo = [home(), orders(),MyList(),profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: SafeArea(child: navTo[myIndex]),




      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        selectedItemColor: Color(0xffD35400),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/store 1.png")), label: "Home"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/shopping-list 1.png")),
              label: "Order"),
               BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/Rectangle 1.png")),
              label: "My List"),
               BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/user 1.png")),
              label: "Profile"),
        ],
        showUnselectedLabels: true,
        showSelectedLabels: true,
      ),
    );
  }
}
