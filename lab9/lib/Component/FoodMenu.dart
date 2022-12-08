import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FoodMenu extends StatelessWidget {
  const FoodMenu({super.key, this.title, this.image, this.title1, this.image1, this.title2, this.image2});
  final String? title,image,title1,image1,title2,image2;
/////////////////////////Color(0xff9B59B6)
  @override
  Widget build(BuildContext context) {
     return

    Container(height: 150,width: double.infinity,
      child: ListView(scrollDirection: Axis.horizontal,
      children: [
        Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Container(alignment: Alignment.topLeft,
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Color(0xff3498DB),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          Text(title1.toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(image1.toString(),scale: 1.7,),
                          )
                        ],
                      ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Container(alignment: Alignment.topLeft,
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Color(0xff9B59B6),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          Text(title.toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(image.toString(),scale: 1.7,),
                          )
                        ],
                      ),
                  ),
                ),
                   Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Container(alignment: Alignment.topLeft,
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Color(0xff3498DB),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          Text(title2.toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(image2.toString(),scale: 1.7,),
                          )
                        ],
                      ),
                  ),
                ),
              ],
            )
          ],
        )
      ],),
    );
  }
}