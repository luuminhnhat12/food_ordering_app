import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/common/color_extension.dart';
import 'package:flutter_application_food_ordering/component/custom_text.dart';
import 'package:flutter_application_food_ordering/model/model_food_item.dart';


class CustomRecent extends StatelessWidget {
  const CustomRecent({
    super.key,
    required this.pop,
  });

  final ModelFoodItem pop;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Image.asset(
            pop.image,
            width: 87,
            height: 66,
            fit: BoxFit.cover
          ),
          const SizedBox(width: 8,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: pop.name, color: TColor.primaryText, size: 24, weight: FontWeight.w600),
              Row(
                children: [
                  CustomText(text: pop.type, color: TColor.secondaryText, size: 16, weight: FontWeight.w400),
                  const SizedBox(width: 8,),
                  CustomText(text: pop.foodType, color: TColor.secondaryText, size: 16, weight: FontWeight.w400),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.orange, size: 16,),
                  CustomText(text: pop.rate, color: Colors.orange, size: 16, weight: FontWeight.w400),
                  CustomText(text: " (${pop.rating} Ratings)", color: TColor.secondaryText, size: 16, weight: FontWeight.w400),
                ],
              ),
            ],
          ),
        ],
      ));
  }
}