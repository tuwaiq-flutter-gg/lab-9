import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/component/textFi.dart';
import 'package:lab9/component/top.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          TopApp(
            label: "Review Food",
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, right: 220),
            child: Text("Enter Old Password"),
          ),
          TextFi(
            hint: "Password",
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, right: 220),
            child: Text("Create New Password"),
          ),
          TextFi(
            hint: "Enter New Password",
          ),
          SizedBox(
            height: 15,
          ),
          TextFi(
            hint: "Re-enter New Password",
          ),
          SizedBox(
            height: 250,
          ),
          Container(
            width: 354,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xffD35400),
                borderRadius: BorderRadius.circular(25)),
            child: Text(
              "Sign Out",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      )),
    );
  }
}
