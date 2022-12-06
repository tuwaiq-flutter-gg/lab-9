import 'package:faisal_lab9/comp/Title.dart';
import 'package:faisal_lab9/comp/buttonComp.dart';
import 'package:faisal_lab9/comp/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hi")),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            homeTitle(title: "Sign Up", isBold: true,),
            textF(title: "Enter Username"),
            // SizedBox(
            //   height: 25,
            // ),
            textF(title: "Enter Password"),
            textF(title: "re-enter Password"),

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
