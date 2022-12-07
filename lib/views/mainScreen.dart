import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hadeel_lab9/views/Home.dart';
import 'package:hadeel_lab9/views/MyList.dart';
import 'package:hadeel_lab9/views/ProfileScreen.dart';
import 'package:hadeel_lab9/views/foodReview.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [
      Home(),
      FoodReview(),
      MyList(),
      Profile(),
    ];

    void _onItemTapped(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: Center(
        child: screens[selectedIndex],
      ),
      //screens[index],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedItemColor: Color(0xffD35400),
        unselectedItemColor: Color.fromARGB(130, 0, 0, 0),
        selectedLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: Color(0xffD35400)),
        unselectedLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: Color.fromARGB(130, 0, 0, 0)),
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.store, color: Color.fromARGB(130, 0, 0, 0)),
            label: "Home",
            activeIcon: Icon(Icons.store, color: Color(0xffD35400)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check, color: Color.fromARGB(130, 0, 0, 0)),
            label: "Order",
            activeIcon: Icon(Icons.fact_check, color: Color(0xffD35400)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outlined,
                color: Color.fromARGB(130, 0, 0, 0)),
            label: "My List",
            activeIcon: Icon(Icons.bookmark_outlined, color: Color(0xffD35400)),
          ),
          BottomNavigationBarItem(
            icon:
                Icon(Icons.person_rounded, color: Color.fromARGB(130, 0, 0, 0)),
            label: "Profile",
            activeIcon: Icon(Icons.person_rounded, color: Color(0xffD35400)),
          ),
        ],
      ),
    );
  }
}
