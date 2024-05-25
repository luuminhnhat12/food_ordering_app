import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/common/color_extension.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final double size;
  final FontWeight weight;
  final TextInputType? inputType;
  bool obsecureText;
  void Function(String)? onSubmit;
  Icon? prefixicon;
  CustomTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.size,
    required this.weight,
    this.inputType,
    this.prefixicon,
    this.onSubmit,
    this.obsecureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TColor.textfield,
        borderRadius: BorderRadius.circular(20)
      ),
      child:TextField(
        autocorrect: false,
        controller: controller,
        keyboardType: inputType,
        obscureText: obsecureText,
        onSubmitted: onSubmit,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          prefixIcon: prefixicon,
          hintText: hintText,
          hintStyle: TextStyle(
            color: TColor.placeholder,
            fontSize:size,
            fontWeight: weight
          )
        ),
      )
    );
  }
}