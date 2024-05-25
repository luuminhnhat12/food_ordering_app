import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_food_ordering/common/color_extension.dart';
import 'package:flutter_application_food_ordering/component/custom_roundbutton.dart';
import 'package:flutter_application_food_ordering/component/custom_text.dart';
import 'package:flutter_application_food_ordering/data/data.dart';
import 'package:flutter_application_food_ordering/view/more%20screen/screen_checkout.dart';
class ScreenMyOrder extends StatefulWidget {
  const ScreenMyOrder({super.key});

  @override
  State<ScreenMyOrder> createState() => _ScreenMyOrderState();
}

class _ScreenMyOrderState extends State<ScreenMyOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20), 
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon:const Icon(Icons.keyboard_arrow_left,size: 30,),
                  ),
                  const Text('My Order', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.deepOrange),),
                ],
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12,vertical:20),
                child: Row(
                  children: [
                    ClipRRect(
                     borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/img/shop_logo.png",
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                    )),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text:"Burger King", size: 20,color: TColor.primaryText ,weight: FontWeight.bold,),
                          const SizedBox(height: 4,),
                          Row(
                            children: [
                              const Icon(Icons.star, size: 20,color: Colors.deepOrangeAccent,),
                              const SizedBox(width: 4,),
                              CustomText(text: "4.5", color: TColor.secondaryText, size:20, weight: FontWeight.w400)
                            ],
                          ),
                          const SizedBox(height: 4,),
                          Row(
                            children: [
                              const Icon(Icons.fmd_good_sharp, size: 20,color: Colors.deepOrangeAccent,),
                              const SizedBox(width: 4,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: "No 03, 4th Lane, Newyork", 
                                      color: TColor.secondaryText, 
                                      size: 18, 
                                      weight: FontWeight.w400
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (BuildContext context, int index) => const Divider(),
                itemCount: Data().itemArr.length,
                itemBuilder:(context,index){
                  var item = Data().itemArr[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(218, 255, 255, 255),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "${item['name']} x${item['qty']}", 
                          color: TColor.primaryText, 
                          size: 18,
                          weight: FontWeight.w500
                        ),
                        CustomText(
                          text: "\$ ${item['price']}", 
                          color: TColor.secondaryText, 
                          size:20, 
                          weight: FontWeight.w400
                        )
                      ],
                    ), 
                  );
                }, 
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text:"Delivery Instructions",
                    size:20,
                    weight: FontWeight.w700,
                    color: TColor.primaryText
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add, color: TColor.primary),
                    label: CustomText(
                      text: "Add Notes",
                      color: TColor.primary,
                      size:20,
                      weight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Divider(
                color: TColor.secondaryText.withOpacity(0.5),
                height: 1,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text:"Sub Total",
                    color: TColor.primaryText,
                    size:20,
                    weight: FontWeight.w700,
                  ),
                  CustomText(
                    text:  "\$68",
                    color: TColor.primary,
                    size: 20,
                    weight: FontWeight.w700,
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text:"Delivery Cost",
                    color: TColor.primaryText,
                    size:20,
                    weight: FontWeight.w700,
                  ),
                  CustomText(
                    text:  "\$2",
                    color: TColor.primary,
                    size:20,
                    weight: FontWeight.w700,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Divider(
                color: TColor.secondaryText.withOpacity(0.5),
                height: 1,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text:  "Total",
                    color: TColor.primaryText,
                    size:20,
                    weight: FontWeight.w700,
                  ),
                  CustomText(
                    text:"\$70",
                    color: TColor.primary,
                    size: 22,
                    weight: FontWeight.w700,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.1,
              ),
              CustomRoundButton(
                media: MediaQuery.sizeOf(context), 
                text: "Check out", 
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: ((context) => const ScreenCheckOut()))
                  );
                }
              ),
              const SizedBox(
                height: 10
              )
            ],
          ),
        ),
      ),
  
    );
  }
}