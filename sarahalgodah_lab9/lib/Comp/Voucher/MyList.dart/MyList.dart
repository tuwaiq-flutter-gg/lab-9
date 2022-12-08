import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarahalgodah_lab9/Comp/Voucher/MyList.dart/listTile.dart';
import 'package:sarahalgodah_lab9/Custom/CustomButton.dart';
import 'package:sarahalgodah_lab9/constant.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My List",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(dPadding),
            child: SizedBox(
              height: Get.height * 0.68,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    ListTileOfVocher(title: "Sale off 30% for Pizza",date: "Apr 10 - Apr 30",daylift: "11 days left",image: "images/Rectangle 7.png", isChecked: true),
                    ListTileOfVocher(title: "Sale off 30% for Pizza",date: "Apr 10 - Apr 30",daylift: "11 days left",image: "images/Rectangle 7.png", isChecked: false),
                    ListTileOfVocher(title: "Sale off 30% for Pizza",date: "Apr 10 - Apr 30",daylift: "11 days left",image: "images/Rectangle 7.png", isChecked: false),
                    ListTileOfVocher(title: "Sale off 30% for Pizza",date: "Apr 10 - Apr 30",daylift: "11 days left",image: "images/Rectangle 7.png", isChecked: true),
                  ]
                  
                      
                      ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: CustomButton(buttonColor: primaryColor, buttonText: "Send")),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
