import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';



import 'package:lap9/costombutton.dart';

class order extends StatelessWidget {
  const order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(left: 20, right: 20),
                    height: 45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            // Navigator.pop(context);
                          },
                          child: Image.asset('assets/back.png'),
                        ),
                        Text(
                          'Review Food',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 30,
                        )
                      ],
                    ),
                  ),
                  iitem(),
                  iitem(),
                  iitem(),
                  SizedBox(
                    height: 200,
                  ),
                  defultbutton(text: 'Send', press: () {}, color: Color(0xffD35400),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class iitem extends StatelessWidget {
  const iitem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(right: 15, left: 15, top: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    height: 85,
                    width: 85,
                    margin: EdgeInsets.only(
                      right: 15,
                    ),
                    child: Image.asset('assets/Rectangle 6.png'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.all(4),
                          child: Text(
                            'Dogmie jagong tutung',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w900),
                          )),
                      Container(
                          margin: EdgeInsets.all(4),
                          child: Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(right: 8),
                                  child: Image.asset('assets/like.png')),
                              Text('999+'),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                  margin: EdgeInsets.only(right: 8),
                                  child: Image.asset('assets/like 2.png')),
                              Text('52+'),
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.all(4),
                          child: Row(
                            children: [
                              Text(
                                '\$99.99',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.green),
                              ),
                            ],
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Image.asset('assets/like 2.png')),
                  Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Image.asset('assets/like.png')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
