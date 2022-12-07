import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FoodMenuCategoray extends StatelessWidget {
  const FoodMenuCategoray({super.key, this.imageURL});
  final String? imageURL;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        child: Image.asset(
          imageURL.toString(),
          height: 120,
          width: 120,
        ),
      ),
    );
  }
}
