import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_food_ordering/common/color_extension.dart';
import 'package:flutter_application_food_ordering/component/custom_text.dart';
import 'package:flutter_application_food_ordering/view/more%20screen/screen_message.dart';
class ScreenInbox extends StatefulWidget {
  const ScreenInbox({super.key});

  @override
  State<ScreenInbox> createState() => _ScreenInboxState();
}

class _ScreenInboxState extends State<ScreenInbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                    icon: const Icon(Icons.keyboard_arrow_left,size: 30,),
                  ),
                  CustomText(
                    text:'Inbox', 
                    size: 30, 
                    weight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ],
              ),
              ListView.separated(
                itemCount: 12,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (BuildContext context, int index) => const Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenMessageDetail()));
                    },
                    child: Row(
                      children: [
                        const Icon(Icons.account_circle, size: 60,),
                        const SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomText(
                                    text: "12:30 PM",
                                    size: 14,
                                    weight: FontWeight.w600,
                                    color: Colors.orangeAccent,
                                  ),
                                ],
                              ),
                              CustomText(
                                text: "John Smith",
                                size: 24,
                                weight: FontWeight.w600,
                                color: TColor.primaryText,
                              ), 
                              const SizedBox(height: 3,),
                              Text(
                                "Hello, I want to order some food",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  color: TColor.secondaryText,
                                ),
                              ),
                          
                          ],),
                        ),
                    ],),
                  );
                },
              )
          ],),
        ),
    ));
  }
}