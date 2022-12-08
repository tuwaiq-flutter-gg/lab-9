import 'package:flutter/material.dart';
import 'package:muhammed_lab9/Views/changePass.dart';
import 'package:muhammed_lab9/component/myButton.dart';

import '../component/option.dart';
class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      width: MediaQuery.of(context).size.width,
      child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("images/Ellipse 6.png"),
          SizedBox(height: 8,),
          Text("Itoh", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
              ,   SizedBox(height: 8,),
                  Text("+011 12398142 ", style: TextStyle( fontSize: 14),)
                  , SizedBox(height: 18,),

                  Container(
                    height: MediaQuery.of(context).size.height*.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                          option(text: "My Profile",),
                                                  InkWell(
                                                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: ((context) => changePass()))),
                                                    child: option(text: "Change Password",)),

                          option(text: "Payment Settings",),

                          option(text: "My Voucher",),

                          option(text: "Notification",),

                          option(text: "About Us",),

                          option(text: "Contact Us",),

                      ],
                    ),
                  ),
SizedBox(height: 20,),
    MyButton(
                  buttonColor: Color(0xffECF0F1),
                  borderRadius: 30,
                  height: 50,
                  textWidget: const Text(
                    "Sign out",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                 
                  width: MediaQuery.of(context).size.width * .8),
        ],
      ),
    );
  }
}