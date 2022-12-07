import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lab9/components/buttonbar.dart';
import 'package:lab9/components/spacing.dart';
import 'package:lab9/components/txtf.dart';
import 'package:lab9/main.dart';
import 'package:lab9/pages/homepage.dart';
import 'package:lab9/pages/signup.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacing(height: Get.height / 3.5),
                Text(
                  "Sign in",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Spacing(height: 20),
                Txtf(
                  hint: "Username",
                ),
                Spacing(height: 10),
                Txtf(
                  hint: "Password",
                ),
                Spacing(height: 40),
                InkWell(
                  onTap: () {
                    Get.offAll(HomePage());
                  },
                  child: Bbar(
                    bcolor: myorange,
                    bname: "Sign in",
                    textcolor: Colors.white,
                  ),
                ),
                Spacing(height: 20),
                InkWell(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(239, 9, 0, 0),
                  child: Text(
                    "Forgot Password?",
                    textAlign: TextAlign.right,
                  ),
                )),
                InkWell(
                    onTap: () {
                      Get.to(Signup());
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(286, 9, 0, 0),
                      child: Text(
                        "Or Sign up",
                        textAlign: TextAlign.right,
                      ),
                    ))
              ],
            ),
          ),
          Spacing(height: 65),
          Image.asset("images/bottompic.png")
        ],
      ),
    );
  }
}
