import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lab9/components/buttonbar.dart';
import 'package:lab9/components/orders.dart';
import 'package:lab9/components/sales.dart';
import 'package:lab9/components/spacing.dart';
import 'package:lab9/main.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My List",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: Column(
        children: [
          Container(
            height: Get.height / 2,
            child: ListView(
              children: [
                SalesList(),
                SalesList(),
                SalesList(),
              ],
            ),
          ),
          Spacing(height: Get.height / 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                Bbar(bname: "Send", textcolor: Colors.white, bcolor: myorange),
          )
        ],
      ),
    );
  }
}
