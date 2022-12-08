import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lab9/pages/accountPage.dart';
import 'package:lab9/pages/homePage.dart';
import 'package:lab9/pages/orderPage.dart';
import 'package:lab9/pages/signInPage.dart';
import 'package:lab9/pages/voucherPage.dart';
import 'package:lab9/style.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int _pageIndex = 0;

class _MyAppState extends State<MyApp> {
  PageController pageController = PageController(initialPage: _pageIndex);

  void movePageTo(int index) {
    setState(() {
      _pageIndex = index;
      pageController.jumpToPage(_pageIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: PageView(
          controller: pageController,
          onPageChanged: (page) {
            setState(() {
              _pageIndex = page;
            });
          },
          // here are the screens
          children: [
            const HomePage(),
            const OrderPage(),
            const VoucherPage(),
            AccountPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 14,
          showUnselectedLabels: true,
          selectedItemColor: orange,
          unselectedItemColor: const Color.fromARGB(127, 0, 0, 0),
          onTap: movePageTo,
          currentIndex: _pageIndex,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/store 1.svg",
                color: _pageIndex == 0
                    ? orange
                    : const Color.fromARGB(127, 0, 0, 0),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/shopping-list 1.svg",
                color: _pageIndex == 1
                    ? orange
                    : const Color.fromARGB(255, 0, 0, 0),
              ),
              label: "Order",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/Rectangle 1.svg",
                color: _pageIndex == 2
                    ? orange
                    : const Color.fromARGB(255, 0, 0, 0),
              ),
              label: "My List",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/user 1.svg",
                color: _pageIndex == 3
                    ? orange
                    : const Color.fromARGB(255, 0, 0, 0),
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
