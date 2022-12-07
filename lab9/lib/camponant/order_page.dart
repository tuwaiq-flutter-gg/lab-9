import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:like_button/like_button.dart';
import 'package:msh_checkbox/msh_checkbox.dart';
import 'package:sleek_button/sleek_button.dart';

class order extends StatelessWidget {
  const order({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 29, left: 10),
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
                    padding: const EdgeInsets.only(right: 110, top: 20),
                    child: Text(
                      "\$ 100",
                      style: TextStyle(color: Colors.green),
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
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
                        color: isLiked ? Colors.deepPurpleAccent : Colors.grey,
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

class order2 extends StatefulWidget {
  const order2({super.key});

  @override
  State<order2> createState() => _order2State();
}

class _order2State extends State<order2> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
     
    return Padding(
      padding: const EdgeInsets.only(top: 29, left: 10),
      child: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    "imag/Rectangle 7.png",
                    height: 80,
                    width: 80,
                  )),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Sale off 30% for Pizza",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 69),
                    child: Row(
                      children: [
                        Icon(Icons.access_time),
                        Text("Apr 10 - Apr 30")
                      ],
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: MSHCheckbox(
                    size: 30,
                    value: isChecked,
                    colorConfig: MSHColorConfig.fromCheckedUncheckedDisabled(
                     checkedColor: Colors.blue,
                    ),
                    style: MSHCheckboxStyle.stroke,
                    onChanged: (selcted) {
                      setState(() {
                        isChecked = selcted;
                      });
                    },
                  ),
                ),
              ),
            ],
          )),
    );
    ;
  }
}
