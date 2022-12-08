import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:lap9/costombutton.dart';
import 'package:lap9/components/defultlabletext.dart';
import 'package:lap9/mainmenu.dart';
import 'package:lap9/screen/signin.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 150,
            ),
            Container(
              padding: EdgeInsets.only(left: 13, right: 13),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      margin: EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Sign up',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                    ),
                    defulttextlaple(
                      text: 'UserName',
                    ),
                    defulttextlaple(
                      text: 'Password',
                    ),
                    defulttextlaple(
                      text: 'Re Password',
                    ),
                    defultbutton(
                      text: 'Rigester',
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => login())));
                      },
                      color:Color(0xffD35400),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('Forget Password?'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 260,
                          child: Divider(color: Color.fromARGB(255, 0, 0, 0))),
                      Text(
                        'Or connect with',
                        style: TextStyle(color: Color(0xff34495E)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/PngItem_39514 1.png'),
                      Container(
                        alignment: Alignment.topRight,
                        width: 100,
                        height: 100,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset('assets/facebook.png'),
                                ),
                                SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset('assets/googleplus.png'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
