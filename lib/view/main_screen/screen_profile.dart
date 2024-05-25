import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/common/color_extension.dart';
import 'package:flutter_application_food_ordering/component/custom_RoundButton.dart';
import 'package:flutter_application_food_ordering/component/custom_text.dart';
import 'package:image_picker/image_picker.dart';
class ScreenProfile extends StatefulWidget {
  const ScreenProfile({super.key});

  @override
  State<ScreenProfile> createState() => _ScreenProfileState();
}

class _ScreenProfileState extends State<ScreenProfile> {
  final ImagePicker picker = ImagePicker();
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 26,horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:MediaQuery.of(context).size.height *0.02 ,),
              CustomText(
                text: "Profile", 
                color: Colors.deepOrange, 
                size: 28, 
                weight: FontWeight.w600
              ),
              const SizedBox(height: 20,),
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: TColor.placeholder,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: image != null
                      ? ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                          child: Image.file(
                            File(image!.path),width: 100,height: 100,fit: BoxFit.cover,),
                        )
                        : Icon(
                            Icons.person,
                            size: 65,
                            color: TColor.secondaryText,
                          ),
                  ),
              ),
              Center(
                child: TextButton.icon(
                  onPressed: () async {
                    image = await picker.pickImage(source: ImageSource.gallery);
                    setState(() {});
                  },
                  icon: Icon(
                    Icons.image,
                    color: TColor.primary,
                    size: 18,
                  ),
                  label: Text(
                    "Edit image",
                    style: TextStyle(color: TColor.primary, fontSize: 18),
                    ),
                  ),
              ),
                const SizedBox( height: 20,),
                ExpansionTile(
                  title: CustomText(text: "Name",
                    color: Colors.blueAccent.shade400,
                    size: 19,
                    weight: FontWeight.w600
                  ),
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: borderInput(),
                        enabledBorder: borderInput(),
                        hintText: "Emilia Clake",
                        prefixIcon: const Icon(Icons.person,size: 15,),
                        hintStyle: TextStyle(color: TColor.secondaryText),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox( height: 20,),
                ExpansionTile(
                  title: CustomText(text: "Phone Number",
                    color: Colors.blueAccent.shade400,
                    size: 19,
                    weight: FontWeight.w600
                  ),
                  children: [
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        focusedBorder: borderInput(),
                        enabledBorder: borderInput(),
                        hintText: "873128723",
                        prefixIcon: const Icon(Icons.phone,size: 15,),
                        hintStyle: TextStyle(color: TColor.secondaryText),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                      ),
                    ),
                  ],
                ),

                const SizedBox( height: 20,),
                ExpansionTile(
                  title: CustomText(text: "Address",
                    color: Colors.blueAccent.shade400,
                    size: 19,
                    weight: FontWeight.w600
                  ),
                  children: [
                    TextField(
                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                         focusedBorder: borderInput(),
                        enabledBorder: borderInput(),
                        hintText: "No 23, 3rd Street, New York, USA",
                        prefixIcon: const Icon(Icons.home,size: 15,),
                        hintStyle: TextStyle(color: TColor.secondaryText),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                      ),
                    ),
                  ],
                ),
                
                const SizedBox( height: 20,),
                ExpansionTile(
                  title: CustomText(text: "Email",
                    color: Colors.blueAccent.shade400,
                    size: 19,
                    weight: FontWeight.w600
                  ),
                  children: [
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                         focusedBorder: borderInput(),
                        enabledBorder: borderInput(),
                        hintText: "emiliaclake@gmail.com",
                        prefixIcon: const Icon(Icons.email,size: 15,),
                        hintStyle: TextStyle(color: TColor.secondaryText),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                      ),
                    ),
                  ],
                ),

                const SizedBox( height: 20,),
                ExpansionTile(
                  title: CustomText(text: "Password",
                    color: Colors.blueAccent.shade400,
                    size: 19,
                    weight: FontWeight.w600
                  ),
                  children: [
                    TextField(
                      decoration: InputDecoration(
                         focusedBorder: borderInput(),
                        enabledBorder: borderInput(),
                        hintText: "*********",
                        prefixIcon: const Icon(Icons.lock,size: 15,),
                        hintStyle: TextStyle(color: TColor.secondaryText),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox( height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: CustomRoundButton(media:MediaQuery.sizeOf(context), text: "Save", onPressed: (){}),
                ),
                const SizedBox( height: 10,),
            ],),
        ),
      ),
    
    );
  }

  OutlineInputBorder borderInput() {
    return OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      );
  }
}