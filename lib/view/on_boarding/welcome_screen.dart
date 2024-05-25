import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/common/color_extension.dart';
import 'package:flutter_application_food_ordering/component/custom_roundbutton.dart';
import 'package:flutter_application_food_ordering/model/enum_round_button.dart';
import 'package:flutter_application_food_ordering/view/login_register/screen_login.dart';
import 'package:flutter_application_food_ordering/view/login_register/screen_register.dart';
class WelcomScreeen extends StatefulWidget {
  const WelcomScreeen({super.key});

  @override
  State<WelcomScreeen> createState() => _WelcomScreeenState();
}

class _WelcomScreeenState extends State<WelcomScreeen> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                "assets/img/welcome_top_shape.png",
                width: media.width,
              ),
              Image.asset(
                "assets/img/app_logo.png",
                width: media.width * 0.55,
                height: media.width * 0.55,
                fit: BoxFit.contain,
              ),
            ],
          ),
          SizedBox(
              height: media.width * 0.1,
            ),
            Text(
              "Discover the best foods from over 1,000\nrestaurants and fast delivery to your\ndoorstep",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            ),
          SizedBox(height: media.height * 0.03),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomRoundButton(media: media, 
              text: "Login to get started", 
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenLogin(),
                  ),
                );
              }, 
              type: RoundButtonType.bgprimary
            ),
          ),

          SizedBox(height: media.height * 0.03),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomRoundButton(media: media, 
              text: "Create an account", 
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenRegister(),
                  ),
                );
              }, 
              type: RoundButtonType.textprimary
            ),
          ),
        ],
      ),
    );
  }
}

