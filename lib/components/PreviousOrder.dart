import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PreviousOrder extends StatelessWidget {
  const PreviousOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color: Color(0xffECF0F1)),
                ),
                child: Image.asset("images/Rectangle 6.jpg",
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.2),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dogmie jagong tutung",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff34495E))),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.005,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.thumb_up_alt_outlined,
                          size: 16,
                        ),
                        Text(
                          " 999+ | ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                        Icon(
                          Icons.thumb_down_alt_outlined,
                          size: 16,
                        ),
                        Text(
                          " 93+ ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.005,
                    ),
                    Row(
                      children: [
                        Text("\$99.99",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2ECC71))),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Color(0xffECF0F1),
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.thumb_down_alt_outlined,
                          size: 16,
                          color: Color(0xff000000),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Color(0xffD35400),
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.thumb_up_alt_outlined,
                          size: 16,
                          color: Color(0xffffffff),
                        ),
                      )
                    ],
                  )
                ],
              )
            ]),
          ],
        ),
      ),
    );
  }
}
