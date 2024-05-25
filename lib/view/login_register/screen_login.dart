import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/common/color_extension.dart';
import 'package:flutter_application_food_ordering/component/custom_RoundButton.dart';
import 'package:flutter_application_food_ordering/component/custom_Text.dart';
import 'package:flutter_application_food_ordering/component/custom_roundbutton2.dart';
import 'package:flutter_application_food_ordering/component/custom_textfield.dart';
import 'package:flutter_application_food_ordering/view/login_register/screen_forget_password.dart';
import 'package:flutter_application_food_ordering/view/login_register/screen_register.dart';
import 'package:flutter_application_food_ordering/view/on_boarding/screeen_onboarding.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
                text:"Login",
                color: TColor.primaryText, 
                size: 30, 
                weight:FontWeight.bold
              ),
              const SizedBox(
                height: 4,
              ),
              CustomText(
                text:"Add your detail to login",
                color:  TColor.secondaryText, 
                size: 18, 
                weight:FontWeight.bold
              ),
      
              const SizedBox(
                height: 24,
              ),
              CustomTextfield(
                prefixicon: const Icon(Icons.email,size: 15,),
                controller:emailController, 
                hintText: "Email", 
                size: 16, 
                weight: FontWeight.w500,
                inputType: TextInputType.emailAddress, 
              ),
      
              const SizedBox(
                height: 26,
              ),
              CustomTextfield(
                prefixicon: const Icon(Icons.lock,size: 15,),
                controller:emailController, 
                hintText: "Password", 
                size: 16, 
                weight: FontWeight.w500,
                obsecureText: true, 
              ),

              const SizedBox(
                height: 25,
              ),
              CustomRoundButton(
                media: MediaQuery.sizeOf(context), 
                text: "Login", 
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: ((context) => const ScreenOnboarding()))
                  );
                }
              ),
      
              const SizedBox(
                height: 12,
              ),
              TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScreenForgetPassword(),
                    ),
                  );
                }, 
                child: CustomText(
                  text:"Forgot Password?", 
                  color: TColor.primary, 
                  size: 19, 
                  weight: FontWeight.w500
              )),

              const SizedBox(
                height: 20,
              ),
              CustomText(
                text:"Or login with", 
                color: TColor.secondaryText, 
                size: 18, 
                weight: FontWeight.w500
              ),
              const SizedBox(
                height: 17,
              ),
              CustomRoundButtom2(
                icon:'assets/img/google_logo.png',
                color:const Color.fromARGB(255, 215, 123, 4), 
                text: "Login with Google", 
                onPressed: (){}
              ),
              const SizedBox(
                height: 20,
              ),
              CustomRoundButtom2(
                icon:'assets/img/facebook_logo.png',
                text:"Login with Facebook",
                color: const Color.fromRGBO(100, 69, 209, 1),
                onPressed: (){},
              ),
              const SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text:"Don't have an account?", 
                    color: TColor.secondaryText, 
                    size: 18, 
                    weight: FontWeight.w500
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ScreenRegister(),
                        ),
                      );
                    }, 
                    child: CustomText(
                      text:"Sign Up", 
                      color: TColor.primary, 
                      size: 20, 
                      weight: FontWeight.w700
                    )
                  )
                ],
              )
          ],),
        ),
      ),
    );
  }
}
