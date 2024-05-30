import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/common/color_extension.dart';
import 'package:flutter_application_food_ordering/component/custom_text.dart';
import 'package:flutter_application_food_ordering/model/model_food_item.dart';


class CustomMostPRestaurant extends StatelessWidget {
  const CustomMostPRestaurant({
    super.key,
    required this.pop,
  });

  final ModelFoodItem pop;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            pop.image,
            width: MediaQuery.of(context).size.width,
            height: 200,
            fit: BoxFit.cover
          ),
          const SizedBox(height: 4),
          CustomText(text: pop.name, color: TColor.primaryText, size: 26, weight: FontWeight.w600),
          const SizedBox(height: 8,),
          Row(
            children: [
              CustomText(text: pop.type, color: TColor.secondaryText, size: 16, weight: FontWeight.w400),
              const SizedBox(width: 8,),
              CustomText(text: pop.foodType, color: TColor.secondaryText, size: 16, weight: FontWeight.w400),
            ],
          ),
          const SizedBox(height: 8,),
          Row(
            children: [
              const Icon(Icons.star, color: Colors.orange, size: 16,),
              CustomText(text: pop.rate, color: Colors.orange, size: 16, weight: FontWeight.w400),
              CustomText(text: " (${pop.rating} Ratings)", color: TColor.secondaryText, size: 16, weight: FontWeight.w400),
            ],
          ),
          const SizedBox(height: 8,),
        ],
      ));
  }
}
