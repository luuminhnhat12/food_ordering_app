import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/component/custom_Text.dart';
import 'package:flutter_application_food_ordering/component/custom_textfield.dart';
import 'package:flutter_application_food_ordering/common/color_extension.dart';
import 'package:flutter_application_food_ordering/component/custom_roundbutton.dart';
import 'package:flutter_application_food_ordering/view/login_register/screen_otp.dart';
class ScreenResetPassword extends StatefulWidget {
  const ScreenResetPassword({super.key});

  @override
  State<ScreenResetPassword> createState() => _ScreenResetPasswordState();
}

class _ScreenResetPasswordState extends State<ScreenResetPassword> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.1,
              ),
              CustomText(
                text:"New Password",
                color: TColor.primaryText, 
                size: 30, 
                weight:FontWeight.bold
              ),
              const SizedBox(
                height: 4,
              ),
              CustomText(
                text:"Please enter your new password ",
                color:  TColor.secondaryText, 
                size: 18, 
                weight:FontWeight.bold
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.04,
              ),
              CustomTextfield(
                prefixicon: const Icon(Icons.lock,size: 15,),
                controller:passwordController, 
                hintText: "Password", 
                size: 16, 
                weight: FontWeight.w500,
                inputType: TextInputType.emailAddress, 
              ),
               SizedBox(
                height: MediaQuery.of(context).size.height*0.04,
              ),
              CustomTextfield(
                prefixicon: const Icon(Icons.lock,size: 15,),
                controller:confirmpasswordController, 
                hintText: "Confirm Password", 
                size: 16, 
                weight: FontWeight.w500,
                inputType: TextInputType.emailAddress, 
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.06,
              ),
              CustomRoundButton(
                media: MediaQuery.sizeOf(context), 
                text: "Send Reset Code", 
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ScreenOtp()));
                }
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    }, 
                    child:CustomText(
                      text: "BACK", 
                      color: TColor.primaryText, 
                      size: 16, 
                      weight: FontWeight.w400
                    ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}