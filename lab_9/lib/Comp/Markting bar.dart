import 'package:flutter/material.dart';

class MarktingBar extends StatelessWidget {
  const MarktingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Divider(
                  endIndent: 10,
                  thickness: 2,
                  color: Colors.black,
                ),
              ),
              Text("Or connect with")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  child: Stack(children: [
                Container(
                    // height: 200,
                    // width: 200,
                    child: Image.asset("images/meat.png", fit: BoxFit.fill))
              ])),
              Row(
                children: [
                  Container(
                      child: Image.asset(
                    "images/facebook 1.png",
                    fit: BoxFit.fill,
                  )),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      child: Image.asset(
                    "images/google-plus 1.png",
                    fit: BoxFit.fill,
                  ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
