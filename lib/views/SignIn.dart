import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hadeel_lab9/components/CustomTextField.dart';
import 'package:hadeel_lab9/components/customButton.dart';
import 'package:hadeel_lab9/components/customTextButton.dart';
import 'package:hadeel_lab9/views/SignUpScreen.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 100)),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Text(
                  "Sign In",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          CustomTextField(
            hint: "Username",
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          CustomTextField(
            hint: "Password",
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          customButton(
            title: "Sign In",
            buttonColor: Color(0xffD35400),
            fontColor: Color(0xffffffff),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUp()));
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: customTextField(
                  title: "Forgot Password?",
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 2,
                width: MediaQuery.of(context).size.width * 0.68,
                color: Color(0xff34495E),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Text(
                "Or connect with",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff34495E),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "images/facebook 1.jpg",
                  height: 40,
                  width: 40,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Image.asset(
                  "images/google-plus 1.jpg",
                  height: 40,
                  width: 40,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
