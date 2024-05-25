import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/common/color_extension.dart';
import 'package:flutter_application_food_ordering/component/custom_text.dart';

class CustomViewAllTitle extends StatelessWidget {
  final String title;
  void Function()? onThisTap;
  CustomViewAllTitle({
    super.key,
    required this.title,
    this.onThisTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(text: "Popular restaurants", color: TColor.primaryText, size: 21, weight: FontWeight.w600),
        InkWell(
          onTap: onThisTap,
          child: CustomText(
            text: "View all", 
            color: Colors.orange, 
            size: 18, 
            weight: FontWeight.w400
          )
        ),
      ],
    );
  }
}