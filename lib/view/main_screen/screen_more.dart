import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/data/data.dart';
import 'package:flutter_application_food_ordering/model/model_menu_item.dart';
import 'package:flutter_application_food_ordering/model/model_more.dart';
import 'package:flutter_application_food_ordering/view/login_register/screen_login.dart';
import 'package:flutter_application_food_ordering/view/more%20screen/screen_about.dart';
import 'package:flutter_application_food_ordering/view/more%20screen/screen_inbox.dart';
import 'package:flutter_application_food_ordering/view/more%20screen/screen_my_oder.dart';
import 'package:flutter_application_food_ordering/view/more%20screen/screen_notification.dart';
import 'package:flutter_application_food_ordering/view/more%20screen/screen_payment_detail.dart';
class ScreenMore extends StatefulWidget {
  const ScreenMore({super.key});

  @override
  State<ScreenMore> createState() => _ScreenMoreState();
}

class _ScreenMoreState extends State<ScreenMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'More',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: Data().moreArr.length,
                itemBuilder:(context, index) {
                  ModelMore moreObject = Data().moreArr[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: InkWell(
                      onTap: () {
                        if (moreObject.index == '1') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>const ScreenPaymentDetails(),
                            ),
                          );
                        } else if (moreObject.index == '2') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ScreenMyOrder(),
                            ),
                          );
                        } else if (moreObject.index == '3') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ScreenNotification(),
                            ),
                          );
                        }
                        else if (moreObject.index == '4') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ScreenInbox(),
                            ),
                          );
                        }
                        else if (moreObject.index == '5') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ScreenAbout(),
                            ),
                          );
                        }
                        else if (moreObject.index == '6') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ScreenLogin(),
                            ),
                          );
                        }
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Image.asset(
                                moreObject.image,
                                height: 20,
                              ),
                              const SizedBox(width: 20),
                              Text(
                                moreObject.name,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              if (moreObject.base != 0)
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      moreObject.base.toString(),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          )
        )
      ) ,
    );
  }
}