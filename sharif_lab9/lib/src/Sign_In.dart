// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharif_lab9/components/Button.dart';
import 'package:sharif_lab9/components/SignBottom.dart';
import 'package:sharif_lab9/components/TextField.dart';
import 'package:sharif_lab9/src/Home.dart';
import 'package:sharif_lab9/src/Sgin_up.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                EdgeInsets.only(bottom: 20, left: 7, top: 100),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Sign in",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          CustomTextField(
                            title: "Username",
                          ),
                          CustomTextField(
                            title: "Password",
                          ),
                          CustomButton(
                            title: 'Sign in',
                            press: () {
                              Get.to(Home());
                            },
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 7),
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: () {
                                Get.to(SignUp());
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
