import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/common/color_extension.dart';
import 'package:flutter_application_food_ordering/component/custom_text.dart';
import 'package:flutter_application_food_ordering/data/data.dart';
import 'package:flutter_application_food_ordering/view/more%20screen/screen_my_oder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class ScreenOffer extends StatefulWidget {
  const ScreenOffer({super.key});

  @override
  State<ScreenOffer> createState() => _ScreenOfferState();
}

class _ScreenOfferState extends State<ScreenOffer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding:   const EdgeInsets.symmetric(vertical: 20,horizontal: 20), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Latest Offer", 
                        color: Colors.deepOrange, 
                        size: 29, 
                        weight: FontWeight.w600
                      ),
                      const SizedBox(height: 5,),
                      CustomText(
                        text: "Find discounts, Offers special\nmeals and more!", 
                        color: TColor.secondaryText, 
                        size: 17, 
                        weight:FontWeight.w600
                      ),
                      const SizedBox(height: 13,),
                      ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: TColor.primary,
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          )
                        ),
                        child: CustomText(
                          text: "Check Offers", 
                          color: TColor.white, 
                          size: 14, 
                          weight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: (){
                       Navigator.push(context, 
                          MaterialPageRoute(
                            builder: (context)=>const ScreenMyOrder()
                          )
                        );
                    },
                    icon: Image.asset("assets/img/shopping_cart.png",),
                  )
        
              ],),
              const SizedBox(height: 10,),
              ListView.builder(   
                shrinkWrap: true, 
                physics: const NeverScrollableScrollPhysics(),
                itemCount: Data().offerArr.length,
                itemBuilder: (context,index){
                  var object = Data().offerArr[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      Image.asset(
                        object['image'].toString(),
                        width: MediaQuery.sizeOf(context).width,
                        height: 200,
                      ),
                      CustomText(
                        text: object['name'].toString(), 
                        color: TColor.primaryText, 
                        size: 19, 
                        weight: FontWeight.w600
                      ),
                      const SizedBox(height: 4,),
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            itemSize: 20,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            ignoreGestures: true,
                            itemPadding:const EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder:(context,_)=>const Icon(Icons.star, color: Colors.orange,),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          CustomText(text: object['rate'].toString(), color: TColor.secondaryText, size: 18, weight: FontWeight.w500)
                      ],)
                    ],
                  );
                },
              )
          ],),
            ),
      ));
  }
}