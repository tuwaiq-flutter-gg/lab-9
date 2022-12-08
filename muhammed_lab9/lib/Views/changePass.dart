import 'package:flutter/material.dart';

import '../component/MyTextField.dart';
import '../component/myButton.dart';

class changePass extends StatefulWidget {
  const changePass({super.key});

  @override
  State<changePass> createState() => _changePassState();
}

class _changePassState extends State<changePass> {
  @override
  var myIndex=3;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
          children: [
            Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap:()=> Navigator.pop(context),
                        child: Icon(Icons.arrow_back_ios_new)),
                      Text("Review Food",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      SizedBox(width: 1,)
                    ],
                  ),
                ),
    SizedBox(height: 100,),
             Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
               width: MediaQuery.of(context).size.width*.78,
                child: Text("Enter Old Password", style: TextStyle(color: Color(0xff34495E),fontSize: 14, fontWeight: FontWeight.normal),),),
           
              SizedBox(height: 24,),
                   myCustomTextField(
                  text: "Password",
                ),
                  SizedBox(height: 24,),
 Container(
               width: MediaQuery.of(context).size.width*.78,
                child: Text("Create New Password", style: TextStyle(color: Color(0xff34495E),fontSize: 14, fontWeight: FontWeight.normal),),),
           
                SizedBox(height: 24,),
                     myCustomTextField(
                  text: "Enter new password",
                ),
                SizedBox(height: 14,),
                
                     myCustomTextField(
                  text: "Renter new password",
                ),
                SizedBox(height: 24,),
          
                
            ],
          ),
        ),
    
    
    
                  
              ],
            ),
        Container(
          margin: EdgeInsets.only(bottom: 8),
          child: MyButton(
                        buttonColor: Color(0xffD35400),
                        borderRadius: 30,
                        height: 50,
                        textWidget: const Text(
                          "Save",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                       
                        width: MediaQuery.of(context).size.width * .8),
        ),   ],
        ),
      ),
   
     bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        selectedItemColor: Color(0xffD35400),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/store 1.png")), label: "Home"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/shopping-list 1.png")),
              label: "Order"),
               BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/Rectangle 1.png")),
              label: "My List"),
               BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/user 1.png")),
              label: "Profile"),
        ],
        showUnselectedLabels: true,
        showSelectedLabels: true,
      ),
   
    );
  }
}