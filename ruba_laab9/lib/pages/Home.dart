import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ruba_laab9/pages/menuFood.dart';
import 'package:ruba_laab9/pages/mylist.dart';
import 'package:ruba_laab9/pages/profile.dart';
import 'package:ruba_laab9/pages/reviewFood.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selextedtab = 0;
  void navigation(int index) {
    setState(() {
      selextedtab = index;
    });
  }
  final List<Widget> content=[
    menu(),
     review(),
      Mylist(),
       profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content[selextedtab],
        
      
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selextedtab,
          onTap: navigation,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xffD35400),
          selectedIconTheme: IconThemeData(
            color: Color(0xffD35400),
          ),
          items: [
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.store,
                  color: Color.fromARGB(255, 48, 48, 48),
                ),
                label: "Home"),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.list_alt_rounded,
                  color: Color.fromARGB(255, 48, 48, 48),
                ),
                label: "Order"),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark,
                  color: Color.fromARGB(255, 48, 48, 48),
                ),
                label: "Mylist"),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline_sharp,
                  color: Color.fromARGB(255, 48, 48, 48),
                ),
                label: "Profile"),
          ]),
    );
  }
}
