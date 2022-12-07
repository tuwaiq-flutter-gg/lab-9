import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:like_button/like_button.dart';

class order extends StatelessWidget {
  const order({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(top: 29,left: 10),
            child: Container(
             
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          "imag/Rectangle 6.png",
                          height: 80,
                          width: 80,
                        )),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Dogmie jagong tutung",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(right: 110,top: 20),
                          child: Text("\$ 100",style: TextStyle(color: Colors.green),),
                        )
                       
                      ],
                    ),
                     Align(alignment: Alignment.topRight,
                       child: Padding(
                         padding: const EdgeInsets.only(left: 30,top: 20),
                         child: LikeButton(
                              size: 30,
                              circleColor: CircleColor(
                                  start: Color(0xff00ddff), end: Color(0xff0099cc)),
                              bubblesColor: BubblesColor(
                                dotPrimaryColor: Color(0xff33b5e5),
                                dotSecondaryColor: Color(0xff0099cc),
                              ),
                              likeBuilder: (bool isLiked) {
                                return ImageIcon(
                                  AssetImage("imag/icons8-heart-suit-48.png"),
                                  color:
                                      isLiked ? Colors.deepPurpleAccent : Colors.grey,
                                  size: 30,
                                );
                              },
                              likeCount: 665,
                              
                            ),
                       ),
                     ),
                  ],
                )),
          );
  }
}