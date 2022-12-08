import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class forgetPassword extends StatelessWidget {
  const forgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Align(alignment: Alignment.centerRight,
       child: Text("Forgot Password?",style: TextStyle(color: Colors.black,fontSize: 16,))),
    )
    ;
  }
}