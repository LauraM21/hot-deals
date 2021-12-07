import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:hotdealsgemet/core/api_calls/auth.dart';
import 'package:hotdealsgemet/core/api_calls/firestore_gateway.dart';
import 'package:hotdealsgemet/core/app_rss/app_colors.dart';
import 'package:hotdealsgemet/core/app_rss/app_strings.dart';
import 'package:hotdealsgemet/core/app_rss/font_size.dart';
import 'package:hotdealsgemet/core/extensions/package_imports_and_exports.dart';
import 'package:hotdealsgemet/core/services/local_database.dart';
import 'package:hotdealsgemet/view_and_controllers/forget_password/forget_password_screen.dart';
import 'package:hotdealsgemet/view_and_controllers/settings/profile_screen.dart';
import 'package:hotdealsgemet/view_and_controllers/settings/settings_screen_controller.dart';

import 'package:hotdealsgemet/widget/custom_spacing.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Settings extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsController>(
        init:   SettingsController(),
        builder: (SettingsController controller) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text("Settings"),backgroundColor: Colors.red,),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              VerticalSpacing(value: 20),

              InkWell(
                onTap: (){
              Get.to(ProfileScreen());
                },
                child: Container(
                  height: 50,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Profile settings"),
                      Icon(Icons.arrow_forward_ios_outlined,size: 18,color: Colors.black.withOpacity(.5),)
                    ],
                  ),
                ),
              ),
              VerticalSpacing(value: 20),

        /*      InkWell(
                onTap: (){
                  Get.to(ForgetPassword());

                },
                child: Container(
                  height: 50,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Forget Passoword settings"),
                      Icon(Icons.arrow_forward_ios_outlined,size: 18,color: Colors.black.withOpacity(.5),)
                    ],
                  ),
                ),
              )*/


            ],
          ),
        ),
      );
    });
  }
}
