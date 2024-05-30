import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/common/color_extension.dart';
import 'package:flutter_application_food_ordering/model/enum/enum_round_button.dart';

class CustomRoundButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final RoundButtonType type;
  const CustomRoundButton({
    super.key,
    required this.media,
    required this.text,
    required this.onPressed,
    this.type = RoundButtonType.bgprimary
  });

  final Size media;
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: media.width,
        height: 56,
        decoration: BoxDecoration(
          border: type == RoundButtonType.bgprimary ? null : Border.all(color: TColor.primary, width: 1) ,
          color: type == RoundButtonType.bgprimary ? TColor.primary : TColor.white,
          borderRadius: BorderRadius.circular(20)
        ),
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: type == RoundButtonType.bgprimary ? TColor.white : TColor.primary ,
              fontSize: 23,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}