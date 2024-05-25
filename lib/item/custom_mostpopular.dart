import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/common/color_extension.dart';
import 'package:flutter_application_food_ordering/component/custom_text.dart';

class CustomMostPopular extends StatelessWidget {
  const CustomMostPopular({
    super.key,
    required this.mostPop,
  });

  final dynamic mostPop;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(17),
            child: Image.asset(mostPop['image'], width: MediaQuery.of(context).size.width*0.58, height: 145, fit: BoxFit.cover)
          ),
          const SizedBox(height: 4),
          CustomText(text: mostPop['name'], color: TColor.primaryText, size: 16, weight: FontWeight.w600),
          Row(
            children: [
              CustomText(text: mostPop['type'], color: TColor.secondaryText, size: 15, weight:FontWeight.w400),
              const SizedBox(width: 5,),
              CustomText(text: mostPop['food_type'], color: TColor.secondaryText, size: 15, weight:FontWeight.w400)
            ],
          ),
          Row(
            children: [
              const Icon(Icons.star, color: Colors.orange, size: 16,),
              CustomText(text: mostPop['rate'], color: Colors.orange, size: 16, weight: FontWeight.w400),
              CustomText(text: "(${mostPop['rating']} Ratings)", color: TColor.secondaryText, size: 16, weight: FontWeight.w400),
          ],)
        ],
        
      ),
    );
  }
}
