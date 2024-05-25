import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/component/custom_Text.dart';
import 'package:flutter_application_food_ordering/common/color_extension.dart';
class CustomRoundButtom2 extends StatelessWidget {
  final Color color;
  final String text;
  final VoidCallback onPressed;
  final String icon;
  const CustomRoundButtom2({
    super.key,
    required this.color,
    required this.text,
    required this.onPressed,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 56,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: color, width: 1)
        ),
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon, width: 25, height: 25,fit: BoxFit.contain,),
            const SizedBox(width: 20,),
            CustomText(
                text:text, 
                color: TColor.white, 
                size: 23, 
                weight: FontWeight.w400
              ),
          ],
        ),

      ),
    );
  }
}

