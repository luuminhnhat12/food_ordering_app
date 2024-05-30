import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/common/color_extension.dart';
import 'package:flutter_application_food_ordering/component/custom_text.dart';
import 'package:flutter_application_food_ordering/component/custom_textfield.dart';
import 'package:flutter_application_food_ordering/data/data.dart';
import 'package:flutter_application_food_ordering/model/model_menu.dart';
import 'package:flutter_application_food_ordering/view/menu_screen/screen_menu_item.dart';
import 'package:flutter_application_food_ordering/view/more%20screen/screen_my_oder.dart';
class ScreenMenu extends StatefulWidget {
  const ScreenMenu({super.key});

  @override
  State<ScreenMenu> createState() => _ScreenMoreState();
}

class _ScreenMoreState extends State<ScreenMenu> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 150),
            width: MediaQuery.of(context).size.width*0.3,
            height: MediaQuery.of(context).size.height*0.8,
            decoration: BoxDecoration(
              color: TColor.primary,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            )
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 13,horizontal: 20),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(text: "Menu", color: Colors.deepOrange, size: 28, weight: FontWeight.w600),
                      IconButton(onPressed: (){
                        Navigator.push(context, 
                          MaterialPageRoute(
                            builder: (context)=>const ScreenMyOrder()
                          )
                        );
                      }, icon: Image.asset("assets/img/shopping_cart.png", width: 24, height: 22, color: TColor.primaryText,)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  CustomTextfield(prefixicon: const Icon(Icons.search),controller: controller, hintText: "Search food", size: 17, weight: FontWeight.w400),
                  SizedBox(height:MediaQuery.of(context).size.height*0.03),
                  ListView.builder(
                    itemCount: Data().menuArr.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                    itemBuilder: (context,index){
                      ModelMenu item = Data().menuArr[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenMenuItem(item: item)));
                        },
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 18,right: 20,top: 8),
                              width: MediaQuery.of(context).size.width -100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: TColor.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 7,
                                    spreadRadius: 5,
                                    offset: Offset(0, 4),
                                  )
                                ]
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  item.image.toString(),
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomText(text: item.name, color:TColor.primaryText, size: 20, weight: FontWeight.w500),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      CustomText(text:"${item.itemsCount} items",color:TColor.secondaryText,size:18,weight: FontWeight.w400,),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.circular(17.5),
                                    boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      offset: Offset(0, 2))
                                    ]),
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    "assets/img/btn_next.png",
                                    width: 15,
                                    height: 15,
                                  ),
                                ),
                            ],)
                          ],
                        ),
                      );
                    }
                  )
                ],
              ),
            ),
          )


        ],
      ),
    );
  }
}