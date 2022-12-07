import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab9/component/muListCon.dart';
import 'package:lab9/component/top.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        SizedBox(
          height: 30,
        ),
        TopApp(
          label: "     My List",
        ),
        SizedBox(
          height: 15,
        ),
        ConMyList(),
        ConMyList(),
        ConMyList(),
      ],
    ));
  }
}
