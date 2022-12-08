import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/Styles/Colors.dart';

class MyListCom extends StatelessWidget {
  const MyListCom({super.key, required this.ContainerColor, this.isCheck});
  final ContainerColor;
  final isCheck;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width - 50,
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: lightGray,
                  border: Border.all(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              child: FittedBox(
                child: Image.asset("images/Rectangle 7.png"),
              ),
            ),
            SizedBox(
              width: 10,
            ),

            ///part2
            Column(
              children: [
                //text1
                Text(
                  "Sale off 30% for Pizza",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF34495E)),
                ),
                SizedBox(
                  height: 10,
                ),
                //text2
                SizedBox(
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.query_builder,
                        color: Color(0xFF34495E),
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Apr 10 - Apr 30",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF34495E)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //text3
                SizedBox(
                  width: 150,
                  child: Text(
                    "11 days left",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            //part3
            Container(
              height: 50,
              width: 60,
            ),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: ContainerColor,
                  border: Border.all(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              child: isCheck,
            ),
          ],
        ),
      ),
    );
  }
}
