import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/component/connect.dart';
import 'package:lab9/component/fecGogle.dart';
import 'package:lab9/component/tetxF.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 330),
            child: Icon(Icons.arrow_back_ios_rounded),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90, right: 240),
            child: Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: TextF(
              hint: "Userame",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextF(hint: "password"),
          SizedBox(
            height: 20,
          ),
          TextF(hint: "Re-enter Password"),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 320,
            height: 45,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Sign Up ",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xffD35400)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 220),
            child: Text(
              "Forgot Password?",
              style: TextStyle(color: Color(0xff34495E)),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Connect(),
          FecGoole(),
        ],
      )),
    );
  }
}
