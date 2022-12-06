// ignore_for_file: prefer_const_constructors

import 'package:faisal_lab9/comp/Title.dart';
import 'package:faisal_lab9/comp/buttonComp.dart';
import 'package:faisal_lab9/comp/textfield.dart';
import 'package:faisal_lab9/main.dart';
import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hi")),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            homeTitle(title: "Sign in", isBold: true,),
            textF(title: "Username"),
            // SizedBox(
            //   height: 25,
            // ),
            textF(title: "Password"),
            butooncomp(title: "Sign in"),
            Container(
              margin: EdgeInsets.only(top: 20, left: 7),
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  print("object");
                },
                //highlightColor: Colors.red,
                child: Text(
                  "Forgot Password?",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontFamily: "Roboto", fontSize: 14),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
