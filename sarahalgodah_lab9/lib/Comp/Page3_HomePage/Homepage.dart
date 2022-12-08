import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarahalgodah_lab9/Comp/Page3_HomePage/HomeDitails.dart';
import 'package:sarahalgodah_lab9/Comp/Voucher/MyList.dart/MyList.dart';
import 'package:sarahalgodah_lab9/Comp/ChangePass/ChangePassword.dart';
import 'package:sarahalgodah_lab9/Comp/Order/MyOrder.dart';
import 'package:sarahalgodah_lab9/Comp/Profile/Profile.dart';
import 'package:sarahalgodah_lab9/constant.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> bottomNavigationBarItem = [
    Home(),
    MyOrder(),
    MyList(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(25),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          elevation: 0,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.store),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.checklist_rtl_rounded),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: 'My List',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
          ],
        ),
      ),
      body: bottomNavigationBarItem.elementAt(_selectedIndex),
    );
  }
}
