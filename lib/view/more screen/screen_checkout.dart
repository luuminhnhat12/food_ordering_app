import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_food_ordering/common/color_extension.dart';
import 'package:flutter_application_food_ordering/component/custom_roundbutton.dart';
import 'package:flutter_application_food_ordering/component/custom_roundbutton2.dart';
import 'package:flutter_application_food_ordering/component/custom_text.dart';
import 'package:flutter_application_food_ordering/component/custom_textfield.dart';

class ScreenCheckOut extends StatefulWidget {
  const ScreenCheckOut({super.key});

  @override
  State<ScreenCheckOut> createState() => _ScreenCheckOutState();
}

class _ScreenCheckOutState extends State<ScreenCheckOut> {
  List paymentArr = [
    {"name": "Cash on delivery", "icon": "assets/img/cash.png"},
    {"name": "**** **** **** 2187", "icon": "assets/img/visa_icon.png"},
    {"name": "test@gmail.com", "icon": "assets/img/paypal.png"},
  ];
  int selectMethod = -1;
  TextEditingController cardController = TextEditingController();
  TextEditingController monthController = TextEditingController();
  TextEditingController yearController = TextEditingController();  
  TextEditingController securityController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  bool isAnyTime = false;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.keyboard_arrow_left,size: 30,),
                  ),
                  CustomText(
                    text:'About us', 
                    size: 30, 
                    weight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              CustomText(
                text: "Delivery Address", 
                color: TColor.primaryText, 
                size: 14, 
                weight: FontWeight.w400
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "653 Nostrand Ave.\nBrooklyn, NY 11216", 
                    size: 16, 
                    color: TColor.primaryText,
                    weight: FontWeight.w700,
                  ),
                  TextButton(
                    onPressed: (){}, 
                    child: CustomText(
                      text: "Change", 
                      size: 16, 
                      color: Colors.orange,
                      weight: FontWeight.w700,
                    )
                  )
                ],
              ),
              
              Container(
                decoration: BoxDecoration(color: TColor.textfield),
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Payment Detail", 
                    color: TColor.secondaryText, 
                    size: 18, 
                    weight: FontWeight.w700
                  ),
                  TextButton.icon(
                    onPressed: (){
                      addCard(context);
                    }, 
                    icon: const Icon(Icons.add,color: Colors.orange,), 
                    label: CustomText(
                      text: "Add card", 
                      color: Colors.orange, 
                      size: 16, 
                      weight:FontWeight.w700
                    )
                  )
                ],
              ),
              ListView.builder(
                itemCount: paymentArr.length, 
                shrinkWrap: true, 
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
                  var item = paymentArr[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          item["icon"].toString(),
                          width: 60, height: 30, fit: BoxFit.contain
                        ),               
                        CustomText(
                          text:item["name"],
                          color: TColor.primaryText,
                          size: 15,
                          weight: FontWeight.w500,
                        ),
                        
                        const Spacer(),
                        Radio(
                          value: index,
                          groupValue: selectMethod,
                          onChanged: (value){
                            setState(() {
                              selectMethod = value as int;
                            });
                          },
                          activeColor: Colors.orange,
                        ),
                    ],),
                  );
                }
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Sub Total",
                    color: TColor.primaryText,
                    size: 20,
                    weight: FontWeight.w500,
                  ),
                  CustomText(
                    text:"\$68",
                    color: TColor.primaryText,
                    size: 20,
                    weight: FontWeight.w700,
                  )
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Delivery Cost",
                    color: TColor.primaryText,
                    size: 20,
                    weight: FontWeight.w500,
                  ),
                  CustomText(
                    text: "\$2",
                    color: TColor.primaryText,
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
                      text:"Discount",
                      color: TColor.primaryText,
                      size: 20,
                      weight: FontWeight.w500,
                    ),
                    CustomText(
                      text: "-\$4",
                      color: TColor.primaryText,
                      size: 20,
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
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Total",
                    color: TColor.primaryText,
                    size: 26,
                    weight: FontWeight.w500,
                  ),
                  CustomText(
                    text: "\$66",
                    color: TColor.primaryText,
                    size: 25,
                    weight: FontWeight.w700,
                  )
                ],        
              ),
              Container(
                decoration: BoxDecoration(color: TColor.textfield),
                height: 18,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.1,
              ),
             
              CustomRoundButton(
                media: MediaQuery.sizeOf(context), 
                text: "Send Order", 
                onPressed: (){
                  modalBottomSheet(context);
                }
                ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      )
    );
  }

  Future<dynamic> addCard(BuildContext context) {
    return showModalBottomSheet(
      context: context, 
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder:(context) {
        return Container(
          height: MediaQuery.sizeOf(context).height * 0.7,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            color: TColor.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Add Card", 
                    size: 30, 
                    weight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.cancel,size: 30,),
                  ),
                ],
              ),
              const SizedBox(height: 8,),
              CustomTextfield(
                controller: cardController, 
                hintText: "Card Number", 
                size: 16, 
                weight: FontWeight.w400
              ),
              
              const SizedBox(height: 22,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Expiry Date", 
                    size: 16, 
                    weight: FontWeight.w700,
                    color: TColor.primaryText,
                  ),
                  SizedBox(
                    width: 100,
                    child: CustomTextfield(
                      inputType: TextInputType.number,
                      controller: monthController, 
                      hintText: "MM", 
                      size: 16, 
                      weight: FontWeight.w600
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: CustomTextfield(
                      inputType: TextInputType.number,
                      controller: yearController, 
                      hintText: "year", 
                      size: 16, 
                      weight: FontWeight.w600
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 22,),
              CustomTextfield(
                controller: securityController, 
                hintText: "Security Code", 
                size: 14, 
                weight: FontWeight.w600
              ),

              const SizedBox(height: 22,),
              CustomTextfield(
                controller: firstnameController, 
                hintText: "First name", 
                size: 16, 
                weight: FontWeight.w600
              ),

              const SizedBox(height: 22,),
              CustomTextfield(
                controller: lastnameController, 
                hintText: "Last name", 
                size: 16, 
                weight: FontWeight.w600
              ),

              const SizedBox(height: 22,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: " You can remove \n your card at any time", 
                    color: Colors.grey, 
                    size:16, 
                    weight: FontWeight.w500
                  ),
                  Switch(
                    value: isAnyTime, 
                    activeColor: Colors.lightBlue,
                    onChanged: (newval){
                      setState(() {
                        isAnyTime = newval;
                      });
                    }
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.06,),
              CustomRoundButtom2(
                color: TColor.primary,
                text: "Add Card", 
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: "assets/img/add.png",

              ),
              
          ],),
        );      
      },
    );
  }

  Future<dynamic> modalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context, 
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context){
        return Container(
          height: MediaQuery.sizeOf(context).height * 0.8,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            color: TColor.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children:[
            
              Image.asset(
                "assets/img/thank_you.png",
                width: MediaQuery.of(context).size.width * 0.55,
              ),
              const SizedBox(
                height: 25,
              ),
              CustomText(
                text: "Thank You!",
                color: TColor.primaryText,
                size: 26,
                weight: FontWeight.w700,
              ),
              const SizedBox(
                height: 8,
              ),
              CustomText(
                text: "for your order",
                color: TColor.primaryText,
                size: 17,
                weight: FontWeight.w700,
              ),
              const SizedBox(
                height: 25,
              ),
              CustomText(
                text :"Your Order is now being processed. We will let you know once the order is picked from the outlet. Check the status of your Order",
                color: TColor.primaryText, size: 14,
                weight: FontWeight.w400,
              ),
              const SizedBox(
                height: 35,
              ),
              CustomRoundButton(
                media: MediaQuery.sizeOf(context), 
                text: "Track Order", 
                onPressed: (){
                  Navigator.pop(context);
                }
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Back To Home",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
          ],),

        );
      }                
    );
  }
}