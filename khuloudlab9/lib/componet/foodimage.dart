import 'package:flutter/cupertino.dart';
 import 'package:flutter/src/widgets/container.dart';
 import 'package:flutter/src/widgets/framework.dart';

 class FImg extends StatelessWidget {
   FImg({super.key, required this.imagee, required this.txt});
   String imagee;
   String txt;

   @override
   Widget build(BuildContext context) {
     return Stack(
       children: [
         Positioned(
           bottom: 0,
           right: 0,
           child: Image.asset(imagee),
         ),
         Padding(
           padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
           child: Align(
               alignment: Alignment.topLeft,
               child: Text(
                 txt,
                 style: TextStyle(
                     color: Color.fromARGB(255, 255, 255, 255),
                     fontSize: 20,
                     fontWeight: FontWeight.bold),
               )),
         ),
       ],
     );
   }
 }