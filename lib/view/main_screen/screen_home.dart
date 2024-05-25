import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/common/color_extension.dart';
import 'package:flutter_application_food_ordering/item/custom_mostpopular.dart';
import 'package:flutter_application_food_ordering/item/custom_mostpopular_restaurant.dart';
import 'package:flutter_application_food_ordering/item/custom_recent.dart';
import 'package:flutter_application_food_ordering/component/custom_text.dart';
import 'package:flutter_application_food_ordering/component/custom_textfield.dart';
import 'package:flutter_application_food_ordering/component/custom_view_allTitle.dart';
import 'package:flutter_application_food_ordering/data/data.dart';
import 'package:flutter_application_food_ordering/view/more%20screen/screen_my_oder.dart';
class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  List<DropdownMenuEntry> dropdownMenuEntries = [
    const DropdownMenuEntry(value: "New York", label: "New York"),
    const DropdownMenuEntry(value: "London", label: "London"),
  ];
  TextEditingController controllerSearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(text: "Welcome, Alex", color: TColor.primaryText, size:25, weight: FontWeight.w600),
                      IconButton(onPressed: (){
                        Navigator.push(context, 
                          MaterialPageRoute(
                            builder: (context)=>const ScreenMyOrder()
                          )
                        );
                      }, icon: Image.asset("assets/img/shopping_cart.png", width: 24, height: 24, color: TColor.primaryText,)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  CustomText(text: "Delivering to", color: TColor.secondaryText, size: 16, weight: FontWeight.w500),
                  const SizedBox(height: 7),
                  DropdownMenu(
                    hintText: "your location",
                    leadingIcon: const Icon(Icons.location_on),
                    width: MediaQuery.of(context).size.width *0.5,
                    trailingIcon: Image.asset('assets/img/dropdown.png'),
                    dropdownMenuEntries: dropdownMenuEntries,
                    inputDecorationTheme: InputDecorationTheme(
                      hintStyle: TextStyle(color: TColor.secondaryText, fontSize: 16, fontWeight: FontWeight.w500),
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: TColor.primaryText)),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: TColor.primaryText)),
                    ),
                    textStyle: TextStyle(color: TColor.primaryText, fontSize: 21, fontWeight: FontWeight.w600),
                    menuStyle: MenuStyle(
                      backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green.shade50)
                    ),
                  ),
                  const SizedBox(height: 15),
                  CustomTextfield(
                    controller: controllerSearch, 
                    hintText:"Search food", 
                    size: 19, 
                    prefixicon: const Icon(Icons.search),
                    weight: FontWeight.w600
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 116,
                    child:  ListView.builder(
                      itemCount: Data().catArr.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        var cart = Data().catArr[index];
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(17),
                                child: Image.asset(cart['image'], width: 85, height: 85, fit: BoxFit.cover)
                              ),
                              const SizedBox(height: 4),
                              CustomText(text: cart['name'], color: TColor.primaryText, size: 16, weight: FontWeight.w600),
                            ],
                            
                          ),
                        );
                      })
                    ),
                  ),
                  const SizedBox(height: 12,),
                  CustomViewAllTitle(title: "Popular restaurants", onThisTap: (){}),
                  const SizedBox(height: 5,),
                  ListView.builder(
                    itemCount: Data().popArr.length, 
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder:(context, index) {
                      var pop = Data().popArr[index];
                      return CustomMostPRestaurant(pop: pop);
                    },
                  ),

                  const SizedBox(height: 12,),
                  CustomViewAllTitle(title: "Most popular", onThisTap: (){}),
                  const SizedBox(height: 8,),
                  SizedBox(
                    height: 216,
                    child:  ListView.builder(
                      itemCount: Data().mostPopArr.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        var  mostPop = Data().mostPopArr[index];
                        return CustomMostPopular(mostPop: mostPop);
                      })
                    ),
                  ),

                  const SizedBox(height: 12,),
                  CustomViewAllTitle(title: "Recent items", onThisTap: (){}),
                  const SizedBox(height: 8,),
                    ListView.builder(
                    itemCount: Data().recentArr.length, 
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder:(context, index) {
                      var pop = Data().popArr[index];
                      return CustomRecent(pop: pop);
                    },
                  ),
                ]
              ),
            ),
          
           
          ],
        ),
      ),
    );
  }
}
