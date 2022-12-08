import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lab9/components/foodImage.dart';

class NearRest extends StatelessWidget {
  const NearRest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FoodImage(
            ImagePath: "assets/images/meal.jpg",
          ),
          const SizedBox(
            width: 20,
          ),
          SizedBox(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Dapur Ijah Restaurant",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/pin 1.svg",
                      width: 12,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "13 th Street, 46 W 12th St, NY",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/clock 1.svg",
                      width: 12,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "3 min - 1.1 km",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                SvgPicture.asset(
                  "assets/icons/star.svg",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
