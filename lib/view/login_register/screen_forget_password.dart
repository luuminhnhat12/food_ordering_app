import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/component/custom_Text.dart';
import 'package:flutter_application_food_ordering/component/custom_textfield.dart';
import 'package:flutter_application_food_ordering/common/color_extension.dart';
import 'package:flutter_application_food_ordering/component/custom_roundbutton.dart';
import 'package:flutter_application_food_ordering/view/login_register/screen_reset_password.dart';
class ScreenForgetPassword extends StatefulWidget {
  const ScreenForgetPassword({super.key});

  @override
  State<ScreenForgetPassword> createState() => _ScreenForgetPasswordState();
}

class _ScreenForgetPasswordState extends State<ScreenForgetPassword> {
  TextEditingController emailController = TextEditingController();
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
                text:"Reset Password",
                color: TColor.primaryText, 
                size: 30, 
                weight:FontWeight.bold
              ),
              const SizedBox(
                height: 4,
              ),
              CustomText(
                text:"Please enter your email to receive a\n reset code to create a new password via email",
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
                prefixicon: const Icon(Icons.email,size: 15,),
                controller:emailController, 
                hintText: "Email", 
                size: 16, 
                weight: FontWeight.w500,
                inputType: TextInputType.emailAddress, 
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.06,
              ),
              CustomRoundButton(
                media: MediaQuery.sizeOf(context), 
                text: "Next", 
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScreenResetPassword(),
                    ),
                  );
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