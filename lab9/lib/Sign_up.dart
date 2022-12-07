import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/camponant/Text_f.dart';

class Sign_Up extends StatelessWidget {
  const Sign_Up({super.key});

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
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios),
                      ),
                    )),
                SizedBox(
                  height: 90,
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
                Text_f(
                  varname: "Re-enter Password",
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: style1,
                      child: Text(
                        "Sign In",
                        style: TextStyle(fontSize: 20),
                      )),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, right: 20),
                    child: TextButton(
                        onPressed: (() {}), child: Text("Forgot Password?")),
                  ),
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
            Icon(Icons.facebook_sharp,size: 40,),
            Icon(Icons.mail_rounded,size: 40),
            
          ],),
                Align(alignment: Alignment.bottomLeft,
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