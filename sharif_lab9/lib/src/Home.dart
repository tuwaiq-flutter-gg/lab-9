// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';
import 'package:sharif_lab9/src/Account.dart';
import 'package:sharif_lab9/src/FirstPage.dart';
import 'package:sharif_lab9/src/Order.dart';
import 'package:sharif_lab9/src/Voucher.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  final pages = [FirstPage(), Order(), Vouchers(), Account()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => setState(() => currentIndex = index),
          elevation: 0,
          iconSize: 25,
          currentIndex: currentIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Color(0xffD35400),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.store),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_checkout_outlined),
              label: "Order",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark), label: "My List"),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
        body: SafeArea(child: pages[currentIndex]));
  }
}
