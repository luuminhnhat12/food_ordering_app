import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/view/main_screen/screen_home.dart';
import 'package:flutter_application_food_ordering/view/main_screen/screen_menu.dart';
import 'package:flutter_application_food_ordering/view/main_screen/screen_more.dart';
import 'package:flutter_application_food_ordering/view/main_screen/screen_offer.dart';
import 'package:flutter_application_food_ordering/view/main_screen/screen_profile.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class ScreenMain extends StatefulWidget {
  const ScreenMain({super.key});

  @override
  State<ScreenMain> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState  extends State<ScreenMain> {
  int _selectedIndex = 2;

  static  const List<Widget> _widgetOptions = <Widget>[
    ScreenMenu(),
    ScreenOffer(),
    ScreenHome(),
    ScreenProfile(),
    ScreenMore()
   
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SalomonBottomBar(
        unselectedItemColor: Colors.black,
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.dashboard,size:27),
            title: const Text("Menu", style: TextStyle(fontSize: 24)),
            selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.local_offer,size: 27,),
            title: const Text("Offer",style: TextStyle(fontSize: 24)),
            selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.home,size: 32,),
            activeIcon: const Icon(Icons.hail,size: 35,),
            title: const Text("Home",style: TextStyle(fontSize: 16)),
            selectedColor: const Color.fromARGB(255, 0, 72, 255),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.person_2,size:27),
            title: const Text("Person",style: TextStyle(fontSize: 24)),
            selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.more,size:27),
            title: const Text("More",style: TextStyle(fontSize: 24)),
            selectedColor: Colors.orange,
          ),
        ], 
        currentIndex: _selectedIndex, 
        onTap: _onItemTapped
      ),
    );
  }
}