import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/Component/Button.dart';
import 'package:lab9/Component/ListProfile.dart';
import 'package:lab9/Pages/ChangePass.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  int selectedIndex = 3;
 void _onItemTapped(int index) {
    setState(() {
      selectedIndex = 3;
    });
  }
// final List<Widget> children = [
//      Home(),
//     Order(),
//     Account()
//   ];
  @override
  Widget build(BuildContext context) {
    return 
     Scaffold(
       body: 
       Column(
       // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30,),
          Container(
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.asset("images/profile.png",scale: 1.3,),
          ),
          SizedBox(height: 15,),
          Text("Itoh",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text("+111229382748",style: TextStyle(color: Colors.black,fontSize: 13),),
          SizedBox(height: 15,),
          ListProfile(title: "My Profile"),
          ListProfile(title: "Change Password"),
          ListProfile(title: "My Voucher"),
          ListProfile(title: "Notification"),
          ListProfile(title: "About Us"),
          ListProfile(title: "Contact Us"),
          SizedBox(height: 30,),
          Button(title: "Sign Out"),
        ],
         ),
         bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xffD35400),
          unselectedItemColor: Color(0xff808080),
         backgroundColor: Colors.white,
         elevation: 0,
          currentIndex: 3,
         onTap: _onItemTapped,

          items: [
            BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home_outlined)),
            BottomNavigationBarItem(label: "Order",icon: Icon(IconData(0xe0f1, fontFamily: 'MaterialIcons'))),
            BottomNavigationBarItem(label: "My List",icon: Icon(Icons.list_alt_outlined)),
            BottomNavigationBarItem(label: "Profile",icon: Icon(Icons.person)),
            ]),
          
     );
  }
}