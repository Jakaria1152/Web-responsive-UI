import 'package:flutter/material.dart';

import 'color.dart';
class PrimaryText extends StatelessWidget {
  final double size;
  final FontWeight fontWeight;
  final Text text;
  final Color color;
  final double height;
  const PrimaryText({required this.text,this.fontWeight = FontWeight.w400,this.color=AppColors.PrimaryColor,
    this.size=20, this.height = 1.3,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text as String,style: TextStyle(
      color: color,
      fontWeight: fontWeight,
      height: height,
      fontSize: size,
      fontFamily: 'Poppins'
    ),);
  }
}
