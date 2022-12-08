import 'package:faisal_lab9/comp/Title.dart';
import 'package:faisal_lab9/comp/buttonComp.dart';
import 'package:faisal_lab9/comp/textfield.dart';
import 'package:faisal_lab9/src/account.dart';
import 'package:faisal_lab9/src/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              homeTitle(
                title: "Sign Up",
                isBold: true,
              ),
              textF(title: "Enter Username"),
              // SizedBox(
              //   height: 25,
              // ),
              textF(title: "Enter Password"),
              textF(title: "re-enter Password"),

              butooncomp(
                title: "Sign Up",
                onpress: () {
                  Get.to(home());
                },
              ),
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
              ),
              SizedBox(
                height: 20,
              ),
              Text("______________________________________Or connect with"),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Image.asset("images/d.png"),
                      width: MediaQuery.of(context).size.width / 2,
                      alignment: Alignment.bottomCenter,
                    ),
                    Image.asset("images/goo.png"),
                    Image.asset("images/face.png"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
