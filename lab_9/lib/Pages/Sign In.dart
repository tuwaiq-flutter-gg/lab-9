import 'package:flutter/material.dart';
import 'package:lab_9/Asses/Colors.dart';
import 'package:lab_9/Comp/Custom%20TextFiled.dart';
import 'package:lab_9/Comp/Cutom%20Button.dart';
import 'package:lab_9/Comp/Markting%20bar.dart';
import 'package:lab_9/Pages/Home%20page.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ListView(children: [
            SizedBox(
              height: 120,
            ),
            Container(
                child: Text(
              "SingUp",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )),
            SizedBox(
              height: 30,
            ),
            CustomTextFiled(title: "Userame", textFiledIcon: Icon(null)),
            SizedBox(
              height: 20,
            ),
            CustomTextFiled(title: "Password", textFiledIcon: Icon(null)),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(buttonTextColor: Colors.white,
              title: "Sign In", buttonColor: OrngColor,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            Container(
                padding: EdgeInsets.only(top: 20),
                alignment: Alignment.centerRight,
                child: Text("Forgot Password?")),
            SizedBox(
              height: 150,
            ),
            MarktingBar(),
          ]),
        ),
      ),
    );
  }
}
