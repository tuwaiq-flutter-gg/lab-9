import 'package:flutter/material.dart';
import 'package:lab_9/Comp/Custom%20Navigation%20Bar.dart';
import 'package:lab_9/Pages/Home.dart';
import 'package:lab_9/Pages/My%20List.dart';
import 'package:lab_9/Pages/Order.dart';
import 'package:lab_9/Pages/Profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //int currentPageIndex = 0;

  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    List tabs = [Home(), Order(), MyList(), Profile()];
  }

  @override
  Widget build(BuildContext context) {
    List tabs = [Home(), Order(), MyList(), Profile()];
    return Scaffold(
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'My List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: onItemTapped,
      ),
      //!------------------------------
    );
  }
}
