import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/camponant/order_page.dart';


class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: () {
                        
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 80),
                  child: Text(
                    "Review Food",
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ],
            ),
          ),
         
          order(),
          order(),
          order(),
          order(),
         
        ],
      )),
    );
  }
}
