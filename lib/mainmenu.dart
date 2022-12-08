import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lap9/screen/HomeScreen/body.dart';
import 'package:lap9/screen/mylist.dart';
import 'package:lap9/screen/order.dart';
import 'package:lap9/screen/profile.dart';


const List<Widget> _pages = <Widget>[
  homescreen(),
  order(),
  mylist(),
  profile(),
];

class navbarrr extends StatefulWidget {
  const navbarrr({super.key});

  @override
  State<navbarrr> createState() => _navbarrrState();
}

class _navbarrrState extends State<navbarrr> {
  int selectedIndex = 0;
  void _onItemTapped(int indexx) {
    setState(() {
      selectedIndex = indexx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        selectedItemColor:  Color(0xffD35400),
        unselectedItemColor: Color.fromARGB(255, 199, 199, 199),
        selectedFontSize: 14.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/store 1.png')),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/shopping-list 1.png')),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/Rectangle 1.png')),
            label: 'My List',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/user 1.png')),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
