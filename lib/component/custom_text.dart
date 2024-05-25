import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight weight;
  TextAlign? align;
  CustomText({
    required this.text,
    required this.color,
    required this.size,
    required this.weight,
    this.align,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align ?? TextAlign.start,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: weight),
    );
  }
}