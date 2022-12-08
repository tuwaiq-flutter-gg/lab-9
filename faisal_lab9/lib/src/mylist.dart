import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class mylist extends StatelessWidget {
  const mylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        margin: EdgeInsets.all(10),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [Image.asset("images/order.png")]),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Dogmie jagong tutung"),
              Row(children: [
                Icon(
                  Icons.thumb_up_alt_outlined,
                ),
                Text("990+"),
                Icon(
                  Icons.thumb_down_alt_outlined,
                ),
                Text("90+"),
              ]),
              Text(
                "\$99.99",
                style: TextStyle(color: Colors.green),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
