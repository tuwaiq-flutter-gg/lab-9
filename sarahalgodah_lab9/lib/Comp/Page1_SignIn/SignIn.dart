import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarahalgodah_lab9/Custom/BottomDesign.dart';
import 'package:sarahalgodah_lab9/Custom/CustmTextField.dart';
import 'package:sarahalgodah_lab9/constant.dart';

class SignIn extends StatelessWidget {
  SignIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.60,
            child: Padding(
              padding: EdgeInsets.all(dPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Sign In",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  CustmTextField(
                    hintText: "Username",
                  ),
                  CustmTextField(
                    hintText: "Password",
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(50),
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                          // Navigator.pushNamed(context, 'HomePage');
                          Get.toNamed("/HomePage");

                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                          InkWell(
                        onTap: () {},
                        child: Text(
                          "Forgot Password..?",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      // Divider(height: 10,thickness: 5,  color: Colors.black,),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        color: Colors.black, height: 2, width: 100,),
                          InkWell(
                        onTap: () {
                                      Get.toNamed("/SignUp");

                        },
                        child: Text(
                          "Or Sign Up",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      ],
                    )
                    ],
                  ),
                   
                ],
              ),
            ),
          ),
        
        Padding(
          padding: const EdgeInsets.only(top: 120),
          child:BottomDesign()
        )
        ],
      ),
    );
  }
}
