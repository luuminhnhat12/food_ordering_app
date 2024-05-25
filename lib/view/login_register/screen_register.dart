import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/common/color_extension.dart';
import 'package:flutter_application_food_ordering/component/custom_Text.dart';
import 'package:flutter_application_food_ordering/component/custom_roundbutton.dart';
import 'package:flutter_application_food_ordering/component/custom_textfield.dart';
import 'package:flutter_application_food_ordering/view/login_register/screen_login.dart';


class ScreenRegister extends StatefulWidget {
  const ScreenRegister({super.key});

  @override
  State<ScreenRegister> createState() => _ScreenRegisterState();
}

class _ScreenRegisterState extends State<ScreenRegister> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
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
                height: MediaQuery.of(context).size.height*0.08,
              ),
              CustomText(
                text:"Sign Up",
                color: TColor.primaryText, 
                size: 30, 
                weight:FontWeight.bold
              ),
              const SizedBox(
                height: 4,
              ),
              CustomText(
                text:"Add your detail to sign up",
                color:  TColor.secondaryText, 
                size: 18, 
                weight:FontWeight.bold
              ),
              const SizedBox(
                height: 24,
              ),
              CustomTextfield(
                prefixicon: const Icon(Icons.person,size: 15,),
                controller: nameController, 
                hintText: "Name", size: 16, 
                weight: FontWeight.w500
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
                height: MediaQuery.of(context).size.height*0.04,
              ),
              CustomTextfield(
                prefixicon: const Icon(Icons.phone,size: 15,),
                controller:emailController, 
                hintText: "Mobile Number", 
                size: 16, 
                weight: FontWeight.w500,
                inputType: TextInputType.phone, 
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.04,
              ),
              CustomTextfield(
                prefixicon: const Icon(Icons.lock,size: 15,),
                controller:emailController, 
                hintText: "Password", 
                size: 16, 
                weight: FontWeight.w500,
                obsecureText: true, 
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.04,
              ),      
              CustomTextfield(
                prefixicon:const Icon(Icons.lock,size: 15,),
                controller:confirmpasswordController, 
                hintText: "Confirm password", 
                size: 16, 
                weight: FontWeight.w500,
                obsecureText: true, 
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.06,
              ),
              CustomRoundButton(
                media: MediaQuery.sizeOf(context), 
                text: "Sign Up", 
                onPressed: (){}
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.09,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text:"Already have an account?", 
                      color: TColor.secondaryText, 
                      size: 18, 
                      weight: FontWeight.w500
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ScreenLogin(),
                          ),
                        );
                      }, 
                      child: CustomText(
                        text:"Login", 
                        color: TColor.primary, 
                        size: 20, 
                        weight: FontWeight.w700
                      )
                    )
                  ],
                )
            ],
          ),
        )
      ),
    );
  }
}