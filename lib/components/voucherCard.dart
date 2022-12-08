import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lab9/components/foodImage.dart';

class VoucherCard extends StatelessWidget {
  const VoucherCard({super.key, required this.isChecked});
  final bool isChecked;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FoodImage(
            ImagePath: "assets/images/VoucherImage.png",
            size: 80,
          ),
          const SizedBox(
            width: 20,
          ),
          SizedBox(
            height: 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Sale off 30% for Pizza",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
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
                      "Apr 10 - Apr 30",
                      style: TextStyle(fontSize: 12),
                    ),
                    const SizedBox(
                      width: 120,
                    ),
                    SvgPicture.asset(
                      isChecked
                          ? "assets/icons/checked.svg"
                          : "assets/icons/notChecked.svg",
                    ),
                  ],
                ),
                const Text(
                  "11 days left",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFE74C3C),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
