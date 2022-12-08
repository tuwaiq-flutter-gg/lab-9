
 import 'package:flutter/material.dart';
 import 'package:flutter/src/widgets/container.dart';
 import 'package:flutter/src/widgets/framework.dart';
import 'package:geolocator/geolocator.dart';
 import 'package:get/get.dart';
import 'package:khuloudlab9/main.dart';
import 'package:khuloudlab9/page/Home.dart';
import 'package:khuloudlab9/page/mylist.dart';
import 'package:khuloudlab9/page/order.dart';
import 'package:khuloudlab9/page/profile.dart';

 class HomePage extends StatefulWidget {
   HomePage({super.key});

   @override
   State<HomePage> createState() => _HomePageState();
 }

 class _HomePageState extends State<HomePage> {
   Position? position;
   int cindex = 0;
   final screens = [
     Home(),
     Orders(),
     MyList(),
     Profile(),
   ];

   final searchCtrl = TextEditingController();

   @override
   Widget build(BuildContext context) {
     return Scaffold(
         bottomNavigationBar: BottomNavigationBar(
           selectedIconTheme: IconThemeData(color: myorange),
           selectedItemColor: myorange,
           unselectedIconTheme:
               IconThemeData(color: Colors.black.withOpacity(0.5)),
           type: BottomNavigationBarType.fixed,
           onTap: (index) => setState(() => cindex = index),
           currentIndex: cindex,
           elevation: 0,
           items: <BottomNavigationBarItem>[
             BottomNavigationBarItem(
               icon: Icon(
                 Icons.home,
               ),
               label: 'Home',
             ),
             BottomNavigationBarItem(
               icon: Icon(
                 Icons.library_books,
               ),
               label: 'Order',
             ),
             BottomNavigationBarItem(
               icon: Icon(
                 Icons.bookmark,
               ),
               label: 'My List',
             ),
             BottomNavigationBarItem(
               icon: Icon(
                 Icons.account_circle,
               ),
               label: 'Profile',
             )
           ],
         ),
         body: screens[cindex]);
   }
 }
