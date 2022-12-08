

import 'package:flutter/material.dart';
import 'package:shatha_lab9/Style/StylesList.dart';
import 'package:shatha_lab9/view/Account.dart';
import 'package:shatha_lab9/view/HomePage.dart';
import 'package:shatha_lab9/view/MyList.dart';
import 'package:shatha_lab9/view/Order.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});
  

  

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {

  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    
    HomePage(),

    // order page
    Order(),

    // My list Page
    MyList(),

    // profile page
    Account(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: primaryColor,
        unselectedItemColor: secondaryColor,
        onTap: _onItemTapped,

        items: const <BottomNavigationBarItem>[
          
          // Home
          BottomNavigationBarItem(
            icon: Icon(Icons.store_rounded),
            label: "Home"

          ),

          // Order
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded),
            label: "Order"
          ),

          // My List
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "My List",
          ),

          // Profile
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Profile"
          ),
        ],
        
      ),
    );
  }
}
