import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReviewFoodCom extends StatelessWidget {
  const ReviewFoodCom({super.key,required this.DislikeColor,required this.likeColor});
  final DislikeColor;
  final likeColor;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width - 50,
        child: Row(
          children: [
            SizedBox(
              height: 80,
              width: 80,
              child: FittedBox(
                child: Image.asset("images/Dapur.png"),
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
                  "Dongmie jagong tutung",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                      Image.asset("images/like 1.png"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "999+ | ",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w500),
                      ),
                      Image.asset("images/like 2.png"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "93+",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w500),
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
                    "\$99.99",
                    style: TextStyle(
                        color: Color(0xFF2ECC71), fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            //part3
            SizedBox(
              height: 50,
              width: 40,
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: DislikeColor,
                  border: Border.all(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset("images/like 2.png"),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: likeColor,
                  border: Border.all(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset("images/like 1.png"),
            ),
          ],
        ),
      ),
    );
  }
}
