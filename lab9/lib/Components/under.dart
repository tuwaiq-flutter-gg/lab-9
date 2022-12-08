import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Under extends StatelessWidget {
  const Under({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 2,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Or connect with",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),

        ////
        Row(
          children: [
            Expanded(
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width / 2,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset("images/d.png"),
                ),
              ),
            ),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width / 2,
              //alignment: Alignment.centerRight,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("images/facebook 1.png"),
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset("images/google-plus 1.png"),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
