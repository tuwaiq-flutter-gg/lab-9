import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/pages/Home.dart';
import 'package:lab9/pages/MyList.dart';
import 'package:lab9/pages/Order.dart';
import 'package:lab9/pages/Profile.dart';

import '../Styles/Colors.dart';
import '../main.dart';

class BNBar extends StatefulWidget {
  const BNBar({super.key});

  @override
  State<BNBar> createState() => _BNBarState();
}

class _BNBarState extends State<BNBar> {
  int click = 0;
  List Pages = [Home(), Order(), MyList(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[click],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          currentIndex: click,
          selectedItemColor: orange,
          unselectedItemColor: Gray,
          showUnselectedLabels: true,
          onTap: ((value) {
            setState(() {
              click = value;
            });
          }),
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.store,
              ),
            ),
            BottomNavigationBarItem(
              label: "Order",
              icon: Icon(
                Icons.list_alt,
              ),
            ),
            BottomNavigationBarItem(
              label: "My List",
              icon: Icon(
                Icons.bookmark,
              ),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.person),
            ),
          ]),
    );
  }
}
////
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/cupertino.dart';

// class BNBar extends StatefulWidget {
//   const BNBar({super.key});

//   @override
//   State<BNBar> createState() => _BNBarState();
// }

// class _BNBarState extends State<BNBar> {
//   int click = 0;
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoTabScaffold(
//         tabBar: CupertinoTabBar(
//             items: const <BottomNavigationBarItem>[
//               BottomNavigationBarItem(
//                 label: "Home",
//                 icon: Icon(
//                   Icons.store,
//                 ),
//               ),
//               BottomNavigationBarItem(
//                 label: "Order",
//                 icon: Icon(
//                   Icons.list_alt,
//                 ),
//               ),
//               BottomNavigationBarItem(
//                 label: "My List",
//                 icon: Icon(
//                   Icons.bookmark,
//                 ),
//               ),
//               BottomNavigationBarItem(
//                 label: "Profile",
//                 icon: Icon(Icons.person),
//               ),
//             ],
//             currentIndex: click,
//             onTap: ((value) {
//               setState(() {
//                 click = value;
//               });
//             })),
//         tabBuilder: (BuildContext context, int index) {
//           return CupertinoTabView(builder: (BuildContext context) {
                      

//           });
//         });
//   }
// }
