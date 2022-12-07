import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hadeel_lab9/components/customCheckBox.dart';

class voucherCard extends StatefulWidget {
  const voucherCard({super.key});

  @override
  State<voucherCard> createState() => _voucherCardState();
}

class _voucherCardState extends State<voucherCard> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    // height: MediaQuery.of(context).size.height * 0.1,
                    // width: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffECF0F1)),
                    child: Image.asset("images/Rectangle 7vou.jpg"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sale off 30% for Pizza",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff34495E))),
                      Row(
                        children: [
                          Image.asset(
                            "images/wall-clock 1.jpg",
                            scale: 2.2,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Text("Apr 10 - Apr 30",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xff34495E))),
                        ],
                      ),
                      Text("11 days left",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffE74C3C))),
                    ],
                  ),
                  customCheckBox(
                    checkValue: isChecked,
                    onChanged: (val) {
                      setState(() {
                        isChecked = val!;
                      });
                    },
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
