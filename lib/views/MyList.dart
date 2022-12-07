import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hadeel_lab9/components/customButton.dart';
import 'package:hadeel_lab9/components/settingsTile.dart';
import 'package:hadeel_lab9/components/voucherCard.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My List",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xff000000),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          voucherCard(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          voucherCard(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          voucherCard(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.28,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customButton(
                title: "Send",
                onPressed: () {},
                buttonColor: Color(0xffD35400),
                fontColor: Color(0xffffffff),
              )
            ],
          )
        ],
      ),
    );
  }
}
