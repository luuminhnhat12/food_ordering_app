import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/view/on_boarding/welcome_screen.dart';
class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  void intitState() async {
    super.initState();
    goWelcomePage();
  }
  void goWelcomePage() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.push(context, MaterialPageRoute(builder:(context) => const WelcomScreeen()));
  }


  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/img/splash_bg.png', width: media.width, height: media.height, fit: BoxFit.cover),
              Image.asset('assets/img/app_logo.png', width: media.width * 0.7, height: media.height * 0.7,fit: BoxFit.contain,),
            ],
          ),
        ],
      ),
    );
  }
}