import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyIcon extends StatelessWidget {
  MyIcon({
    super.key,
    this.svgPicturePath = "assets/icons/gallery.svg",
    this.backGroundColor = const Color(0xFFECF0F1),
    this.size = 75,
  });
  MyIcon.label({
    super.key,
    this.svgPicturePath = "assets/icons/gallery.svg",
    this.backGroundColor = const Color(0xFFECF0F1),
    this.size = 75,
    required this.label,
  });

  final String svgPicturePath;
  String? label;
  final double size;
  final Color backGroundColor;

  @override
  Widget build(BuildContext context) {
    return label == null
        ? Container(
            padding: EdgeInsets.all(20),
            height: size,
            width: size,
            decoration: BoxDecoration(
              color: backGroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: SvgPicture.asset(svgPicturePath),
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                padding: EdgeInsets.all(20),
                height: size,
                width: size,
                decoration: BoxDecoration(
                  color: backGroundColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SvgPicture.asset(svgPicturePath),
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
