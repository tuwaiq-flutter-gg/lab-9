import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FoodImage extends StatelessWidget {
  FoodImage({
    super.key,
    this.ImagePath = "assets/images/default-image.jpg",
    this.backGroundColor = const Color(0xFFECF0F1),
    this.size = 130,
  });
  FoodImage.label({
    super.key,
    this.ImagePath = "assets/images/default-image.jpg",
    this.backGroundColor = const Color(0xFFECF0F1),
    this.size = 130,
    required this.label,
  });

  final String ImagePath;
  String? label;
  final double size;
  final Color backGroundColor;

  @override
  Widget build(BuildContext context) {
    return label == null
        ? Container(
            height: size,
            width: size,
            decoration: BoxDecoration(
              color: backGroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              ImagePath,
              fit: BoxFit.contain,
            ),
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                padding: const EdgeInsets.all(20),
                height: size,
                width: size,
                decoration: BoxDecoration(
                  color: backGroundColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(ImagePath),
              ),
              Text(
                label!,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0XFF283B51),
                ),
              ),
            ],
          );
  }
}
