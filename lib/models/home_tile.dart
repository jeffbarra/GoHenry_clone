import 'package:flutter/material.dart';

class HomeTile {
  final String iconImagePath;
  final String title;
  final String subTitle;
  final Color boxColor;
  final BorderRadius borderRadius;

  HomeTile({
    required this.iconImagePath,
    required this.title,
    required this.subTitle,
    required this.boxColor,
    required this.borderRadius,
  });
}
