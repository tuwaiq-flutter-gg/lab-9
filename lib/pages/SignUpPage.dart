import 'package:flutter/material.dart';
import 'package:lab9/components/btn.dart';
import 'package:lab9/components/myTextField.dart';
import 'package:lab9/pages/homePage.dart';
import 'package:lab9/style.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.only(top: 130),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Sign Up",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const MyTextField(
                hintText: "Enter User Name",
              ),
              const SizedBox(
                height: 20,
              ),
              const MyTextField(
                hintText: "Enter Password",
              ),
              const SizedBox(
                height: 20,
              ),
              const MyTextField(
                hintText: "Re-enter Password",
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: InkWell(
                  onTap: () {},
                  child: const BTN(
                    text: "Sign Up",
                    backgroundColor: orange,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 168, right: 40),
                  child: Image.asset("assets/images/bot.jpg"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
