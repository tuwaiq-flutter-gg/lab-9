import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Home.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Column(
                    children: [
                      Container(
                        height: 61,
                        width: 380,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              filled: true,
                              labelText: "Enter UserName",
                              fillColor: Color(0xffECF0F1)),
                        ),
                      ),
                      Container(
                        height: 61,
                        width: 380,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              filled: true,
                              labelText: "Enter password",
                              fillColor: Color(0xffECF0F1)),
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text("Forget password?",
                              style: TextStyle(color: Colors.black))),
                      Container(
                        height: 46,
                        width: 380,
                        decoration: BoxDecoration(
                            color: Color(0xffD35400),
                            borderRadius: BorderRadius.circular(30)),
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Home()));
                            },
                            child: Text("Sign in",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))),
                      ),
                      SizedBox(
                        height: 150,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 5),
                            color: Colors.grey,
                            height: 2,
                            width: MediaQuery.of(context).size.width - 180,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text("Or Contact with"),
                        ],
                      ),
                      Row(children: [
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Image.asset("images/PngItem_39514 1.png")),
                        SizedBox(
                            width: MediaQuery.of(context).size.width - 400),
                        Container(
                          margin: EdgeInsets.only(bottom: 60),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff3B5998)),
                          height: 40,
                          width: 40,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 60),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffF44336)),
                          height: 40,
                          width: 40,
                        ),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
