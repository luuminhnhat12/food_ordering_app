import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/data/data.dart';
import 'package:flutter_application_food_ordering/model/model_notification.dart';
class ScreenNotification extends StatefulWidget {
  const ScreenNotification({super.key});

  @override
  State<ScreenNotification> createState() => _ScreenNotificationState();
}

class _ScreenNotificationState extends State<ScreenNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                const Text('Notification', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.deepOrange),),
              ],
            ),
            const SizedBox(height: 20,),
            ListView.separated(
              itemCount: Data().notificationArr.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (BuildContext context, int index) => const Divider(),
              itemBuilder: (BuildContext context, int index) {
                ModelNotification noti = Data().notificationArr[index];
                return Row(
                    children: [
                      Icon(Icons.circle, size: 10,color: Colors.orange.shade400,),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(noti.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                            Text(noti.time, style: TextStyle(fontSize: 15),),
                          ],
                        ),
                      ),
                    ],
                  );
                
              },
            ),
          ],
        ),
      ),
    );
  }
}