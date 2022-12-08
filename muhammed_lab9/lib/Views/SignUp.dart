import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:muhammed_lab9/Views/PageNav.dart';
import 'package:muhammed_lab9/Views/SignIn.dart';
import 'package:muhammed_lab9/component/connect.dart';

import '../component/MyTextField.dart';
import '../component/myButton.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
    
    
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                 width: MediaQuery.of(context).size.width*.78,
                  child: Text("Sign up", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),),
                SizedBox(height: 24,),
                     myCustomTextField(
                    text: "user name",
                  ),
    
                  SizedBox(height: 24,),
                       myCustomTextField(
                    text: "password",
                  ),
                  SizedBox(height: 24,),
                   
      myCustomTextField(
                    text: "Confirm Password",
                  ),
                    SizedBox(height: 24,),
              InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: ((context) => PageNav()))),
                child: MyButton(
                        buttonColor: Color(0xffD35400),
                        borderRadius: 30,
                        height: 50,
                        textWidget: const Text(
                          "Sign in",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                       
                        width: MediaQuery.of(context).size.width * .8),
              ),
              
     SizedBox(height: 10,),
                    Container(
                      width:MediaQuery.of(context).size.width*.78 ,
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        
                                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: ((context) => sigIn()))),

                        
                        child: Text("Forgot password", style: TextStyle(color: Color(0xff34495E)),)))
                  
              ],
            ),
          ),
    
    
    
    
          connect(),
        ],
      ),
    );
  }
}