import 'package:flutter/material.dart';
import 'package:muhammed_lab9/component/backgroundIcon.dart';
class connect extends StatelessWidget {
  const connect({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
               child: Row(
                  children: [
                    Container(
                      height: 1,
                      width:  MediaQuery.of(context).size.width*.8,
                      color: Color(0xff34495E),
                    ),
                    Text(" Or connect", style: TextStyle(color: Color(0xff34495E), fontSize: 14),)
                  ],
                )
              ),

              Container(
                padding: EdgeInsets.only(right: 20,  top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("images/PngItem_39514 1.png"),
                    Row(children: [Icon(Icons.facebook_outlined,size: 28, color: Colors.blue,), SizedBox(width: 10,),backgroundIcon(height: 25,centeredIcon: Icon(Icons.g_mobiledata_sharp, color: Colors.white,), backgroundColor: Color.fromARGB(255, 173, 172, 167),circular: true,)],)
                  ],
                ),
              )


            ],
          ),
        );
  }
}