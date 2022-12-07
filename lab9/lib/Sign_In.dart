import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/Home.dart';
import 'package:lab9/Sign_up.dart';
import 'package:lab9/camponant/Text_f.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style1 = ElevatedButton.styleFrom(
      backgroundColor: Color(0xffD35400),
      fixedSize: Size(300, 30),
    );

    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 17, left: 30),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios),
                      ),
                    )),
                SizedBox(
                  height: 160,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    )),
                Text_f(
                  varname: "Username",
                ),
                Text_f(
                  varname: "Password",
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>  Home_Page(),
                          ),
                        );
                      },
                      style: style1,
                      child: Text(
                        "Sign In",
                        style: TextStyle(fontSize: 20),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 20),
                      child: TextButton(
                          onPressed: (() {}), child: Text("Forgot Password?")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 20),
                      child: TextButton(
                          onPressed: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const Sign_Up(),
                              ),
                            );
                          }),
                          child: Text("Sign UP?")),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Divider(
                    height: 20,
                    thickness: 0,
                    indent: 20,
                    endIndent: 130,
                    color: Colors.black,
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text("Or connect with")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.facebook_sharp,
                      size: 40,
                    ),
                    Icon(Icons.mail_rounded, size: 40),
                  ],
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.asset("imag/PngItem_39514 1.png"),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
