import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/Component/ColorButton.dart';
import 'package:lab9/Component/TextFiled.dart';
import 'package:lab9/Component/TitleandIcon.dart';
import 'package:lab9/Pages/Account.dart';
import 'package:lab9/Pages/Home.dart';

class ChangePass extends StatefulWidget {
  const ChangePass({super.key});

  @override
  State<ChangePass> createState() => _ChangePassState();
}

class _ChangePassState extends State<ChangePass> {
   int selectedIndex = 3;
 void _onItemTapped(int index) {
    setState(() {
      selectedIndex = 3;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0,centerTitle: true,
        leading:  IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined),color: Colors.black, onPressed: () { 
          Navigator.push(context,MaterialPageRoute(builder: (context) => const Account()));
        },),
      title:Text("Review Food",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),) ,),
      body: Column(
        children: [
          SizedBox(height: 15,),
          //TitleIcon(title: "Review Food"),   
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Align(alignment: Alignment.centerLeft,
              child: Text("Enter Old Password",)),
          ),
          SizedBox(height: 15,),
          TextFiled(title: "Password",),
          SizedBox(height: 30,),
           Padding(
             padding: const EdgeInsets.only(left: 20.0),
             child: Align(alignment: Alignment.centerLeft,
              child: Text("Create New Password",)),
           ),
          SizedBox(height: 15,),
          TextFiled(title: "Enter New Password",),
          SizedBox(height: 15,),
          TextFiled(title: "Re-enter New Password",),
          SizedBox(height: 100,),
          Center(
      child: ElevatedButton(
        onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => const Home()));
        }, 
        child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold ),),
        style: ElevatedButton.styleFrom(minimumSize: Size(370, 50),primary: Color(0xffD35400),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),)),
    ),
     
        
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
            BottomNavigationBarItem(label: "Order",icon: Icon(Icons.list_alt_outlined)),
            BottomNavigationBarItem(label: "My List",icon: Icon(IconData(0xe0f1, fontFamily: 'MaterialIcons'))),
            BottomNavigationBarItem(label: "Profile",icon: Icon(Icons.person)),
            ]),
    );
  }
}