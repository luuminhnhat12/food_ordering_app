import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/common/color_extension.dart';
import 'package:flutter_application_food_ordering/component/custom_text.dart';
import 'package:flutter_application_food_ordering/component/custom_textfield.dart';

import 'package:flutter_application_food_ordering/data/data.dart';
import 'package:flutter_application_food_ordering/model/model_food_item.dart';
import 'package:flutter_application_food_ordering/model/model_menu_item.dart';
import 'package:flutter_application_food_ordering/view/menu_screen/screen_food_detail.dart';
import 'package:flutter_application_food_ordering/view/more%20screen/screen_my_oder.dart';

class ScreenMenuItem extends StatefulWidget {
  dynamic item;
  ScreenMenuItem({super.key,required this.item});

  @override
  State<ScreenMenuItem> createState() => _ScreenMenuItemState();
}

class _ScreenMenuItemState extends State<ScreenMenuItem> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                IconButton(
                  onPressed: (){ 
                    Navigator.pop(context);
                  }, 
                  icon: const Icon(Icons.arrow_back_ios)
                ),
                CustomText(
                  text: "Menu", 
                  color: Colors.deepOrange, 
                  size: 27, 
                  weight: FontWeight.w600
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.3),
                IconButton(
                  onPressed: (){
                    Navigator.push(context, 
                      MaterialPageRoute(
                        builder: (context)=>const ScreenMyOrder()
                      )
                    );
                  }, 
                  icon: Image.asset("assets/img/shopping_cart.png", 
                  width: 24, 
                  height: 22, 
                  color: TColor.primaryText,
                )),
              ],
            ),
            const SizedBox(height: 10),
            CustomTextfield(controller: controller,prefixicon: const Icon(Icons.search), hintText: "Search food", size: 17, weight: FontWeight.w400),
            const SizedBox(height: 20),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 6),
              itemCount: Data().menuItemsArr.length,
              itemBuilder: (context,index){
                ModelFoodItem item = Data().menuItemsArr[index];
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenItemDetail()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image.asset(
                            item.image,
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            fit: BoxFit.cover
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(text: item.name, color: TColor.white, size:25, weight: FontWeight.w600),
                              const SizedBox(height: 7),
                              Row(
                                children: [
                                  Icon(Icons.star, 
                                    color: TColor.primary, 
                                    size: 20
                                  ),
                                  CustomText(
                                    text: item.rate, 
                                    color: TColor.primary, 
                                    size: 19, 
                                    weight: FontWeight.w500
                                  ),
                                  const SizedBox(width: 5),
                                  Icon(
                                    Icons.circle, 
                                    color: TColor.white, 
                                    size: 7
                                  ),
                                  const SizedBox(width: 5),
                                  CustomText(
                                    text: item.type, 
                                    color: TColor.white, 
                                    size:17, 
                                    weight: FontWeight.w500
                                  ),
                                  const SizedBox(width:6 ),
                                  Icon(
                                    Icons.circle, 
                                    color: TColor.white, 
                                    size: 7
                                  ),
                                  const SizedBox(width:6 ),
                                  CustomText(
                                    text: item.foodType, 
                                    color: TColor.white, 
                                    size:17, 
                                    weight: FontWeight.w500
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]
                        
                      ),
                    ],
                  )
                );
              })
          ],
        ),
      ),
    );
  }
}