import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ruba_laab9/pages/Signup.dart';
import 'package:ruba_laab9/pages/login.dart';

class Signlogin extends StatefulWidget {
  const Signlogin({super.key});

  @override
  State<Signlogin> createState() => _SignloginState();
}

class _SignloginState extends State<Signlogin> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            TabBar(
                labelColor: Color(0xffD35400),
                indicator: BoxDecoration(
                  color: Color(0xffECF0F1),
                ),
                tabs: [
                  Tab(
                    text: "Sign in",
                  ),
                  Tab(
                    text: "Sign Up",
                  ),
                ]),
            Expanded(
                child: TabBarView(children: [
              login(),
              Signup(),
            ])
            ),
            
          ],
        ),
      ),
    );
  }
}
