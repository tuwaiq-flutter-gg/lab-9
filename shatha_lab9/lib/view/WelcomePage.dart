
import 'package:flutter/material.dart';
import 'package:shatha_lab9/Style/StylesFunctions.dart';
import 'package:shatha_lab9/Style/StylesList.dart';
import 'package:shatha_lab9/view/Signin.dart';
import 'package:shatha_lab9/view/Signup.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Signin Button
            customButton(type: Buttons.orange, text: "Sign In" , onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Signin()));
            }, ),

            const SizedBox(height: 50,),

            // Signup Button
            customButton(type: Buttons.orange, text: "Sign Up" , onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Signup()));
            }, ),
          ],
        ),
      ),
    );
  }
}