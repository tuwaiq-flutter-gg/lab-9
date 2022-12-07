import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/component/connect.dart';
import 'package:lab9/component/fecGogle.dart';
import 'package:lab9/component/tetxF.dart';
import 'package:lab9/pages/home.dart';
import 'package:lab9/pages/signUp.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
            padding: const EdgeInsets.only(top: 170, right: 240),
            child: Text(
              "Sign In",
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
          Container(
            width: 320,
            height: 45,
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              child: Text(
                "Sign In",
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
          Row(
            children: [
              //سويت هذا الزر عشان ينقلني للصفحة التسجيل لان مافيه زر مسبقا في التصميم
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Color(0xff34495E)),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 180),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Color(0xff34495E)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Connect(),
          FecGoole(),
        ],
      )),
    );
  }
}
