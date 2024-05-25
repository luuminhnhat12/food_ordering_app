import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/common/color_extension.dart';
import 'package:flutter_application_food_ordering/component/custom_Text.dart';
import 'package:flutter_application_food_ordering/component/custom_roundbutton.dart';
import 'package:flutter_application_food_ordering/view/login_register/screen_login.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:quickalert/quickalert.dart';
class ScreenOtp extends StatefulWidget {
  const ScreenOtp({super.key});

  @override
  State<ScreenOtp> createState() => _ScreenOtpState();
}

class _ScreenOtpState extends State<ScreenOtp> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
          child:Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.1,
              ),
              CustomText(
                text:"We have sent an OTP to your email",
                color: TColor.primaryText, 
                size: 30, 
                weight:FontWeight.bold
              ),
              const SizedBox(
                height:14,
              ),
              CustomText(
                text:"Please check email to reset your password",
                color:  TColor.secondaryText, 
                size: 18, 
                weight:FontWeight.bold
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.07,
              ),
              OtpTextField(
                textStyle: const TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                numberOfFields: 6,
                borderColor:const Color(0xFF6A53A1),
                focusedBorderColor: const Color(0xFF6A53A1),
                onCodeChanged: (String code) {
                //handle validation or checks here if necessary         
                },
                borderWidth: 2.0,
                showFieldAsBox: true,
            //runs when every textfield is filled 
                onSubmit: (String verificationCode) {
                    QuickAlert.show(
                      context: context, 
                      type:QuickAlertType.success,
                      text: 'Transaction Completed Successfully!',
                      autoCloseDuration: const Duration(seconds: 2),
                      showConfirmBtn: false,
                    );
                }, 
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.1,
              ),
              CustomRoundButton(
                media: MediaQuery.of(context).size, 
                text: "Back to login", 
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const ScreenLogin(),)
                  );
                }
              )
            ],
          )
        )
      ),
    );
  }
}