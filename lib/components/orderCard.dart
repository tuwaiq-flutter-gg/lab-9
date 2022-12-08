import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lab9/components/foodImage.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key, required this.isLiked});
  final bool? isLiked;
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
                  "Dapur Ijah Restaurant",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/like.svg"),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      "999+ |",
                      style: TextStyle(fontSize: 12),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    SvgPicture.asset("assets/icons/dislike.svg"),
                    const Text(
                      "  93 +",
                      style: TextStyle(fontSize: 12),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    isLiked != null
                        ? Row(
                            children: [
                              SvgPicture.asset(
                                isLiked!
                                    ? "assets/icons/dislikeOff.svg"
                                    : "assets/icons/likeOn.svg",
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset(
                                !isLiked!
                                    ? "assets/icons/dislikeOff.svg"
                                    : "assets/icons/likeOn.svg",
                              ),
                            ],
                          )
                        : Row(
                            children: [
                              SvgPicture.asset("assets/icons/dislikeOff.svg"),
                              const SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset("assets/icons/likeOff.svg"),
                            ],
                          ),
                  ],
                ),
                const Text(
                  "\$99.99",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF2ECC71),
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
