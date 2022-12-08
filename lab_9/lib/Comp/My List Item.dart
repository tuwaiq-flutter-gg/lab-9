import 'package:flutter/material.dart';

class MyListItem extends StatelessWidget {
  const MyListItem({super.key});

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
              height: 80,
              width: 80,
              child: Image.asset(
                "images/Copon.png",
                fit: BoxFit.fill,
              ),
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
                  Text("Sale off 30% for Pizza",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time_rounded),
                      Text("Apr 10 - Apr 30"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "11 days left",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
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
