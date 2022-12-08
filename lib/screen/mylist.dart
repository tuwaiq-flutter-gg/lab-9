import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:lap9/costombutton.dart';

class mylist extends StatelessWidget {
  const mylist({super.key});

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
                          onTap: () {},
                          child: Image.asset('assets/back.png'),
                        ),
                        Text(
                          'My List',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 30,
                        )
                      ],
                    ),
                  ),
                 InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(right: 15, left: 15, top: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              //   padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    height: 85,
                    width: 85,
                    margin: EdgeInsets.only(
                      right: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffECF0F1),
                    ),
                    child: Image.asset('assets/Rectangle 7.png'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.all(4),
                          child: Text(
                            'Sale off 30% for Pizza',
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
                                  child:
                                      Image.asset('assets/wall-clock 1.png')),
                              Text('Apr 10 - Apr 30'),
                              SizedBox(
                                width: 15,
                              ),
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.all(4),
                          child: Row(
                            children: [
                              Text(
                                '11 days left',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 255, 0, 0)),
                              ),
                            ],
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(right: 15, left: 15, top: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              //   padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    height: 85,
                    width: 85,
                    margin: EdgeInsets.only(
                      right: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffECF0F1),
                    ),
                    child: Image.asset('assets/Rectangle 7.png'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.all(4),
                          child: Text(
                            'Sale off 30% for Pizza',
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
                                  child:
                                      Image.asset('assets/wall-clock 1.png')),
                              Text('Apr 10 - Apr 30'),
                              SizedBox(
                                width: 15,
                              ),
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.all(4),
                          child: Row(
                            children: [
                              Text(
                                '11 days left',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 255, 0, 0)),
                              ),
                            ],
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(right: 15, left: 15, top: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              //   padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    height: 85,
                    width: 85,
                    margin: EdgeInsets.only(
                      right: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffECF0F1),
                    ),
                    child: Image.asset('assets/Rectangle 7.png'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.all(4),
                          child: Text(
                            'Sale off 30% for Pizza',
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
                                  child:
                                      Image.asset('assets/wall-clock 1.png')),
                              Text('Apr 10 - Apr 30'),
                              SizedBox(
                                width: 15,
                              ),
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.all(4),
                          child: Row(
                            children: [
                              Text(
                                '11 days left',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 255, 0, 0)),
                              ),
                            ],
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
                  SizedBox(
                    height: 200,
                  ),
                  defultbutton(text: 'Send', press: () {}, color: Color(0xffD35400))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
