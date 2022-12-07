import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/camponant/order_page.dart';


class My_List extends StatelessWidget {
  const My_List({super.key});

  @override
  Widget build(BuildContext context) {
     final ButtonStyle style1 = ElevatedButton.styleFrom(
      backgroundColor: Color(0xffD35400),
      fixedSize: Size(300, 30),
    );
    
    return Scaffold(
      body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
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
                    padding: const EdgeInsets.only(right: 120),
                    child: Text(
                      "My List",
                      style: TextStyle(fontSize: 30),
                    ),
                  )
                ],
              ),
            ),
         
            order2(),
            order2(),
            order2(),
            order2(),
         
              SizedBox(
                height: 270,
                child: Align(alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                            onPressed: () {},
                            style: style1,
                            child: Text(
                              "Send",
                              style: TextStyle(fontSize: 20),
                            )),
                ),
              ),
        ],
      ),
      
          )),
    );
  }
}
