import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/common/color_extension.dart';
import 'package:flutter_application_food_ordering/component/custom_text.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:quickalert/quickalert.dart';

class ScreenItemDetail extends StatefulWidget {
  const ScreenItemDetail({super.key});

  @override
  State<ScreenItemDetail> createState() => _ScreenItemDetailState();
}

class _ScreenItemDetailState extends State<ScreenItemDetail> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          
          Image.asset(
            "assets/img/detail_top.png",
            width: media.width,
            height: media.width,
            fit: BoxFit.cover,
          ),
          Container(
            width: media.width,
            height: media.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Column(
                    children: [
                      SizedBox(height: media.width -60 ,),
                      Container(
                        decoration: BoxDecoration(
                          color: TColor.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)
                          )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25),
                              child: CustomText(
                                text: "Tandoori Chicken Pizza",
                                size: 27,
                                color: TColor.primaryText,
                                weight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical:18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          IgnorePointer(
                                            ignoring: true,
                                            child: RatingBar.builder(
                                              minRating: 0,
                                              maxRating: 5,
                                              itemCount: 5,
                                              itemSize: 30,
                                              initialRating: 3,
                                              itemBuilder: (context, _) => const Icon(Icons.star, color:Colors.orangeAccent,),
                                              onRatingUpdate: (rating) {
                                                QuickAlert.show(
                                                  context: context, 
                                                  type: QuickAlertType.success, 
                                                  title: "Rating",
                                                  text: "Rating is $rating",
                                                  autoCloseDuration: const Duration(seconds: 2), 
                                                );
                                              },
                                            )
                                          ),
                                          const SizedBox( height:10),
                                          CustomText(
                                            text: "3.0 Rating",
                                            size: 20,
                                            color: TColor.primaryText,
                                            weight: FontWeight.bold,
                                          )
                                        ],
                                      ),
                                      CustomText(text: "\$ 74", color: Colors.grey, size: 40, weight: FontWeight.w500)
                                    ],
                                  ),
                                  const SizedBox(height: 20,),
                                  CustomText(
                                    text: "Description",
                                    size: 26,
                                    color: TColor.primaryText,
                                    weight: FontWeight.w500,
                                  ),
                                  const SizedBox(height: 10,),
                                  CustomText(
                                    text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada",
                                    color: Colors.black45,
                                    size: 18,
                                    weight: FontWeight.w400,    
                                  ),
                                  const SizedBox(height: 15,),
                                  CustomText(
                                    text: "Customize your option",
                                    size: 23,
                                    color: TColor.primaryText,
                                    weight: FontWeight.w500,
                                  ),
                                  const SizedBox(height: 15,),
                                  DropdownMenu(
                                    hintText: "Select Topping",
                                    inputDecorationTheme: const InputDecorationTheme(
                                      filled: true,
                                      fillColor: Color.fromRGBO(251, 208, 153, 1),
                                    ),
                                    menuStyle: MenuStyle(
                                      // alignment: AlignmentGeometry.lerp(Alignment.center, Alignment.bottomCenter, 0.5), 
                                      backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green.shade50)
                                    ),
                                    width: media.width *0.6,
                                    textStyle: TextStyle(color: TColor.primaryText, fontSize: 15, fontWeight: FontWeight.w600),
                                    trailingIcon: Icon(Icons.arrow_drop_down, color: TColor.primaryText, size: 30,),
                                    dropdownMenuEntries: const <DropdownMenuEntry>[
                                      DropdownMenuEntry(value: "Chesse", label: "Cheese"),
                                      DropdownMenuEntry(value: "Milk", label: "Milk"),
                                      DropdownMenuEntry(value: "Yagort", label: "Yagort")
                                    ]
                                  ),
                                    const SizedBox(height: 15,),
                                  DropdownMenu(
                                    hintText: "Select size",
                                    inputDecorationTheme:const InputDecorationTheme(
                                      filled: true,
                                      fillColor: Color.fromRGBO(251, 208, 153, 1),
                                    ),
                                    menuStyle: MenuStyle(
                                      backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green.shade50)
                                    ),
                                    width: media.width *0.6,
                                    textStyle: TextStyle(color: TColor.primaryText, fontSize: 15, fontWeight: FontWeight.w600),
                                    trailingIcon: Icon(Icons.arrow_drop_down, color: TColor.primaryText, size: 30,),
                                    dropdownMenuEntries: const <DropdownMenuEntry>[
                                      DropdownMenuEntry(value: "Small", label: "Small"),
                                      DropdownMenuEntry(value: "Medium", label: "Mediumm"),
                                      DropdownMenuEntry(value: "Big", label: "Big")
                                    ]
                                  ),
                                  const SizedBox(height: 15,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(text: "Number of proposal",weight: FontWeight.w600,size: 25,color: TColor.primaryText,),
                                      Row(
                                        children: [
                                          IconButton(
                                            style: ButtonStyle(
                                              backgroundColor: MaterialStateColor.resolveWith((states) => const Color.fromARGB(255, 202, 212, 146)),
                                            ),
                                            icon: const Icon(Icons.remove,size: 20,),
                                            onPressed: (){},
                                          ),
                                          const SizedBox(width: 4,),
                                          CustomText(text: "1",weight: FontWeight.w600,size: 22,color: TColor.primaryText,),
                                          const SizedBox(width: 4,),
                                          IconButton(
                                            style: ButtonStyle(
                                              backgroundColor: MaterialStateColor.resolveWith((states) => const Color.fromARGB(255, 202, 212, 146)),
                                            ),
                                            icon: const Icon(Icons.add,size: 20,),
                                            onPressed: (){},
                                          ),
                                        ],
                                      ),
                                      
                                  ],),
                                  const SizedBox(height: 19,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(text: "Total", color: TColor.primaryText, size:34 ,weight: FontWeight.w600),
                                      CustomText(text: "\$13", color: Colors.redAccent, size:37 ,weight: FontWeight.w600),
                                      
                                    ],
                                  ),
                                  const SizedBox(height: 20,),
                             
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: (){
                                            QuickAlert.show(
                                              context: context, 
                                              type: QuickAlertType.success, 
                                              title: "Add to cart",
                                              text: "Item added to cart",
                                              autoCloseDuration: const Duration(seconds: 2), 
                                            );
                                          }, 
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
                                            shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20),
                                              side: const BorderSide(color: Colors.orangeAccent, width: 2)
                                            ))
                                          ),
                                          child: CustomText(
                                            text: "Add to cart", 
                                            color: Colors.orangeAccent, 
                                            size: 20, 
                                            weight: FontWeight.w600,
                                          )
                                        ), 
                                        ElevatedButton(
                                          onPressed: (){},
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateColor.resolveWith((states) =>  Colors.white),
                                            shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              side: const BorderSide(color: Colors.deepOrange, width: 1)
                                            ))
                                          ), 
                                          child: CustomText(
                                            text: "Buy now", 
                                            color: Colors.deepOrange, 
                                            size: 20, 
                                            weight: FontWeight.w600,
                                            )
                                          ),
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),               
                          ],
                        ),
                      ),
                    ] 
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                        icon: const Icon(Icons.arrow_back_ios,color: Colors.white,),
                        onPressed: () {
                          Navigator.pop(context);
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.shopping_cart,color: Colors.white,), 
                          onPressed: () {
                            // Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      
    );
  }
}