import 'package:flutter/material.dart';

import 'package:flutter_application_food_ordering/view/on_boarding/welcome_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomScreeen(),  
    );
  }
}
