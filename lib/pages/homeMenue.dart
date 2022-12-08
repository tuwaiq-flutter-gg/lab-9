import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab9/components/Custom%20Images.dart';
import 'package:lab9/components/datatheme.dart';
import 'package:lab9/components/images.dart';

import 'package:lab9/components/texts.dart';

class homeMenue extends StatelessWidget {
  const homeMenue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: 
        Container(
          height: 600,
          width: 230,
          padding: EdgeInsets.all(15),
          child: Center(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
            textfilds(titlee: "Search"),
            Text("fooood menue"),
            Image.asset('images/burgers.png'),
            Row(

              children: [

                 CustomeImages( backGroundImage: backcolorOrange, imageFood: 'images/burgers.png', textFoodName: 'burger',)
       
              ],
            )
               
            
              ],
            ),
          ),
        )
        // CustomeImages( backGroundImage: backcolorOrange, imageFood: 'images/burgers.png', textFoodName: 'burger',)
                         )

        // Row( children: [ 
        //     textNormal(textnormal: "9 west 46 Th Street ,New Your City")
        // Icon(Icons.location_pin),
        // ]),
      ;
        }
}

// Column(
//           children: [
//             ListView(padding: const EdgeInsets.all(25), children: [
//               //   textfilds(titlee: "Search"),
//               Row(
//                 children: [
//                   Icon(Icons.location_pin),
//                   textNormal(textnormal: "9 west 46 Th Street ,New Your City"),
//                   ListView(scrollDirection: Axis.horizontal, children: [
//                    // Image.asset(""),
//                     CustomeImages(
//                       textFoodName: "Burger",
//                       imageFood: "images/burgers.png",
//                       backGroundImage: Color.fromARGB(255, 158, 208, 241),
//                     ),
//                   ])
//                 ],
//               )
//             ]),
//           ],
//         )