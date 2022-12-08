import 'package:flutter/material.dart';

class MyOrderItem extends StatelessWidget {
  const MyOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: InkWell(
      onTap: () {},
      child: Container(
        //height: 318,
        width: 130,
        child: Row(
          children: [
            Container(
              child: Image.asset("images/NearMe.png"),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              padding: EdgeInsets.all(8),
              //alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Dapur Ijah Restaurant",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.thumb_up_alt_outlined,
                      ),
                      Text("990+"),
                      Container(
                        padding: EdgeInsets.all(8),
                        height: 15,
                        width: 2,
                        color: Colors.black,
                      ),
                      Icon(
                        Icons.thumb_down_alt_outlined,
                      ),
                      Text("90+"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\$99.99",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
