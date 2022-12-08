// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharif_lab9/components/Button.dart';
import 'package:sharif_lab9/components/SignBottom.dart';
import 'package:sharif_lab9/components/TextField.dart';
import 'package:sharif_lab9/src/Sign_In.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 0),
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(bottom: 20, left: 7, top: 50),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Sign Up",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          CustomTextField(
                            title: "Enter Username",
                          ),
                          CustomTextField(
                            title: "Enter Password",
                          ),
                          CustomTextField(
                            title: "Re-enter Password",
                          ),
                          CustomButton(
                            title: 'Sign Up',
                            press: () {
                              Get.to(SignIn());
                            },
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 7),
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: () {
                                // Get.to(SignUp());
                              },
                              child: Text(
                                "Forgot Password?",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 149,
            ),
            CustomSignBottom(
              text: 'Or connect with',
            ),
          ],
        ),
      ),
    );
  }
}
