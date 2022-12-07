import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hadeel_lab9/views/Home.dart';
import 'package:hadeel_lab9/views/MyList.dart';
import 'package:hadeel_lab9/views/ProfileScreen.dart';

class bottomNavigation extends StatefulWidget {
  const bottomNavigation({super.key});

  @override
  State<bottomNavigation> createState() => _bottomNavigationState();
}

class _bottomNavigationState extends State<bottomNavigation> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;

    final screens = [
      Home(),
      Home(),
      MyList(), 
      Profile(),
    ];

    return BottomNavigationBar(
      iconSize: 30,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (index) => setState(() => currentIndex = index),
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
          icon: Icon(Icons.person_rounded, color: Color.fromARGB(130, 0, 0, 0)),
          label: "Profile",
          activeIcon: Icon(Icons.person_rounded, color: Color(0xffD35400)),
        ),
      ],
    );
  }
}
